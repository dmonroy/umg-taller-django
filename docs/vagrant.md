# Vagrant

Utilizaremos [Vagrant](https://www.vagrantup.com/) como mecanismo para reproducir un ambiente de desarrollo que incluya todas las herramientas necesarias para el desarrollo durante el proyecto, de modo que los alumnos puedan descargar y preparar el entorno de trabajo en casa días antes del taller y de este modo sacar el máximo proyecto del limitado tiempo con el objeto de profundizar en detalles lo que el [framework Django](http://djangoproject.com/) ofrece.

## Instalar Vagrant

1. Descarga e instala (Virtualbox](https://www.virtualbox.org/wiki/Downloads) (si no lo tienes instalado aún).
2. Busca en el [sitio de Vagrant](https://www.vagrantup.com/downloads.html) el instalador correspondiente a tu sistema operativo e instálalo.
3. Algunas versiones de windows pueden requerir cerrar sesión y volver a iniciar, hazlo si usas windows.
4. Abre la consola o línea de comandos de tu sistema operativo y ejecuta lo siguiente:

    vagrant

Y si la instalación se ha realizado con éxito verás un texto similar al siguiente:

   Usage: vagrant [options] <command> [<args>]

        -v, --version                    Print the version and exit.
        -h, --help                       Print this help.

    Common commands:
         box             manages boxes: installation, removal, etc.
         connect         connect to a remotely shared Vagrant environment
         destroy         stops and deletes all traces of the vagrant machine
         global-status   outputs status Vagrant environments for this user
         halt            stops the vagrant machine
         help            shows the help for a subcommand
         init            initializes a new Vagrant environment by creating a Vagrantfile
         login           log in to HashiCorp's Atlas
         package         packages a running vagrant environment into a box
         plugin          manages plugins: install, uninstall, update, etc.
         provision       provisions the vagrant machine
         push            deploys code in this environment to a configured destination
         rdp             connects to machine via RDP
         reload          restarts vagrant machine, loads new Vagrantfile configuration
         resume          resume a suspended vagrant machine
         share           share your Vagrant environment with anyone in the world
         ssh             connects to machine via SSH
         ssh-config      outputs OpenSSH valid configuration to connect to the machine
         status          outputs status of the vagrant machine
         suspend         suspends the machine
         up              starts and provisions the vagrant environment
         version         prints current and latest Vagrant version

    For help on any individual command run `vagrant COMMAND -h`

    Additional subcommands are available, but are either more advanced
    or not commonly used. To see all subcommands, run the command
    `vagrant list-commands`.


Si no tienes este mismo mensaje y en cambio ves un mensaje de error entonces ha fallado algo en la instalación de Vagrant, verifica los pasos de nuevo hasta que obtengas este mensaje.


