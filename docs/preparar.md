# Instrucciones de preparación

Este documento lista los pasos que debe preparar cada estudiante previo al taller, importante que se realice por completo para evitar demoras el día del taller.

## Sistema Operativo

No hay una imposición sobre el sistema operativo para el trabajo, se puede hacer en Linux, Mac OS or Windows. Es importante que el estudiante se sienta cómodo utilizando la línea de comandos del sistema operativo, básicamente sobre la navegación entre directorios.

## Sistema de Versionamiento

Se hará uso de un sistema de control de versionamiento com mecanismo para compartir el código y registrar el histórico de cambios sobre el proyecto.

El sistema destinado para esta tarea es [git](http://es.wikipedia.org/wiki/Git) y utilizaremos el servicio online de [Github](https://github.com/).

1. Instalar el cliente [Git](http://git-scm.com/download/mac)
2. Registrarse en [Github](https://github.com/join)

## Entorno virtual

Instalar Vagrant siguiendo [estas instrucciones](vagrant.md).

Una vez instalado y verificada la instalación de Vagrant debemos proceder a clonar el entorno virtual, seguir las siguientes instrucciones.

- Iniciar sesión en github
- Definir y crear un directorio de trabajo:
  - Windows: C:\taller
  - Linux: /home/usuario/taller
  - Mac OS: /Users/usuario/taller
- Ingresar a este directorio mediante la línea de comandos
- Clonar el repositorio dentro del directorio de trabajo

    git clone https://github.com/dmonroy/umg-taller-django

Ahora dentro del directorio taller debería existir el directorio umg-taller-django; Ingresar a el mediante la línea de comandos y ejecutar lo siguiente:

    vagrant up
    vagrant ssh

