#!/bin/bash

exec 2>&1
set -e
set -x

export PATH

cat > /etc/apt/sources.list <<EOF
deb http://archive.ubuntu.com/ubuntu trusty main
deb http://archive.ubuntu.com/ubuntu trusty-security main
deb http://archive.ubuntu.com/ubuntu trusty-updates main
deb http://archive.ubuntu.com/ubuntu trusty universe
EOF

apt-get update
apt-get install -y --force-yes \
    build-essential \
    curl \
    git \
    htop \
    imagemagick \
    language-pack-en \
    language-pack-es \
    libbz2-dev \
    libffi-dev \
    libglib2.0-dev \
    libjpeg-dev \
    libpq-dev \
    libpq5 \
    libssl-dev \
    libxml2-dev \
    libxslt-dev \
    locales \
    openssh-client \
    openssh-server \
    python \
    python-dev \
    python-pip \
    python-setuptools \
    python-software-properties \
    python3-dev \
    tar \
    zip \
    zlib1g-dev \
    #

pip install \
    virtualenv \
    virtualenvwrapper \
    #

gem install foreman

cat > /home/vagrant/.bashrc <<EOF
TERM=xterm-256color

export LC_ALL=es_GT.UTF-8
export LANG=es_GT.UTF-8
export LANGUAGE=es_GT.UTF-8

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2.7
source /usr/local/bin/virtualenvwrapper.sh
EOF

if grep -Fxq byobu_sourced /home/vagrant/.profile
then
    echo "byobu already enabled"
else
    echo "Enabling byobu"
    echo '_byobu_sourced=1 . /usr/bin/byobu-launch' >> /home/vagrant/.profile    
fi

cat > /etc/apt/sources.list.d/pgdg.list <<EOF
deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main
EOF

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  apt-key add -
apt-get update

apt-get install -y --force-yes \
    postgresql-9.3 \
    postgresql-server-dev-9.3 \
    postgresql-contrib-9.3 \
    #

cat > /etc/postgresql/9.3/main/pg_hba.conf <<EOF
local   all             postgres                                trust
local   all             all                                     trust
host    all             all             127.0.0.1/32            md5
host    all             all             ::1/128                 md5
local   replication     postgres                                trust
EOF


cat > /etc/postgresql/9.3/main/postgresql.conf <<EOF
data_directory = '/var/lib/postgresql/9.3/main'
hba_file = '/etc/postgresql/9.3/main/pg_hba.conf'
ident_file = '/etc/postgresql/9.3/main/pg_ident.conf'
external_pid_file = '/var/run/postgresql/9.3-main.pid'
port = 5432
max_connections = 100
unix_socket_directories = '/var/run/postgresql'
ssl = true
ssl_cert_file = '/etc/ssl/certs/ssl-cert-snakeoil.pem'
ssl_key_file = '/etc/ssl/private/ssl-cert-snakeoil.key'
shared_buffers = 128MB
# dynamic_shared_memory_type = posix
log_line_prefix = '%t [%p-%l] %q%u@%d '
log_timezone = 'GMT-6'
stats_temp_directory = '/var/run/postgresql/9.3-main.pg_stat_tmp'
datestyle = 'iso, ymd'
timezone = 'GMT-6'
lc_messages = 'es_GT.UTF-8'
lc_monetary = 'es_GT.UTF-8'
lc_numeric = 'es_GT.UTF-8'
lc_time = 'es_GT.UTF-8'
default_text_search_config = 'pg_catalog.spanish'
EOF

service postgresql restart

apt-get autoremove -y --force-yes

exit 0


