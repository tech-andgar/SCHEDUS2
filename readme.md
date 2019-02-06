# Welcome To SCHEDUS

SCHEDUS is CRUD Generator for laravel, with the most important features web application development. It's easy, flexible, and powerful.

## System Requirement and Basic Technical Knowledge
- PHP 5.6.x <= (Recommend PHP 7.2 or higher) and the extensions:
  - Mcrypt
  - OpenSSL
  - Mbstring
  - Tokenizer
  - FileInfo
- Web Server as:
  - Apache 2.4.x or higher with rewrite engine on (mod_rewrite) (Tested)
  - Nginx 1.11.x or higher (No tested)
- Database that laravel supports, actually can be:
  - MySQL (Tested)
  - Postgres (No tested)
  - SQLite (No tested)
  - SQL Server (No tested)
- Composer
- Laravel 5.3 <= (Recommend Laravel 5.7 or higher)

#Preparando nuestro entorno de trabajo.
Laravel necesita un servidor web. No importa cuál sea pero la mayoría de la comunidad usa Apache o Nginx y hacer lo mismo te pondrá las cosas más fáciles a la hora de buscar ayuda si la necesitas.

## How To Install

### Instalación de XAMPP (Windows - Nivel Básico)
XAMPP es un programa que nos ofrece una distribución de Apache, MySQL, PHP y
Perl muy simple de instalar, administrar y utilizar. Podemos descargarlo
[aquí.](https://https://www.apachefriends.org/es/download.html)

### Instalación de WAMP (Windows - Nivel Inttermedio)
WAMP es un programa que nos ofrece una distribución de Apache, MySQL, PHP y
Perl muy simple de instalar, administrar y utilizar. Podemos descargarlo
[aquí.](https://https://www.apachefriends.org/es/download.html)

### Instalación de LAMP (Linux)
LAMP es el conjunto de aplicaciones Apache, MySQL, PHP o Python en entornos
Linux que nos facilitan el desarrollo de sistemas.

En Ubuntu o derivadas podemos instalarlo con los siguientes comandos:
```shell
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install lamp-server^
$ sudo apt-get install php5-mcrypt
$ sudo php5enmod mcrypt
```

Despues de tener instalado nuestro Servidor web, es necesario instalar composer el cuál es un gestor de dependencias php muy útil y del cuál se hablará más tarde.

### Instalación de composer (Windows)
La forma más sencilla de instalar Composer en tu ordenador Windows consiste en
[descargar](https://getcomposer.org/Composer-Setup.exe) y ejecutar el archivo
Composer-Setup.exe, que instala la versión más reciente de Composer y actualiza
el PATH de tu ordenador para que puedas ejecutar Composer simplemente escribiendo el comando composer.


Instalación de composer (Linux)
En ubuntu bastará con ejecutar los siguientes comandos en la terminal.
```shell
$ sudo apt-get install curl
$ curl -sS https://getcomposer.org/installer | php
$ sudo mv composer.phar /usr/local/bin/composer
$ sudo echo 'PATH=$PATH:~/.composer/vendor/bin' >> ~/.profile
```

### 1. Pre-requiste verifty on system
Open the terminal, run the following command at the terminal

#### 1.1 PHP
```shell
$ php -i
```
if not haved installed PHP, get installer on [PHP](https://www.PHP.com) or
[wamp](https://www.wamp.com)

if have installed PHP, but no working this command. Need configure variable
Create new environment variable for PHP command
For this it is enough to open the properties of the system.

Abra busqueda de Windows o botón Windows 10
"Editar las variables de entorno del sistema"

![Propiedades_sistema](docs\assets\images\Variables_entorno\01_Propiedades_del_sistema_Windows_10.png "Ventana
de Propiedades del sistema de Windows 10")

Ventana de "Propiedades del sistema" de Windows 10


y encontrar dentro de la ventana el botón "Variables de entorno".



![Variables_entorno](docs\assets\images\Variables_entorno\02_Variables_de_entorno_Windows_10.png "Ventana de Variables
de entorno de Windows 10")

Ventana de "Variables de entorno" de Windows 10


Una vez dentro de esta ventana basta con editar la variable de sistema llamada
Path y agregaremos anteponiendo un símbolo punto y coma (;) al valor de la
variable.

![Variables_entorno](./docs/assets/images/Variables_de_entorno_Windows_10.png "Ventana de Variables
de entorno de Windows 10")

![Editar_variables_entorno](docs\assets\images\Variables_entorno\03_Editar_variable_de_entorno_Windows_10.png
"Ventana de Editar Variables de entorno de Windows 10")



Ventana "Editar la variable del sistema" de Windows 10 editando la variable
"Path"


![Buscar_carpeta_variables_entorno](docs\assets\images\Variables_entorno\04_Buscar_carpeta_ruta_php_7.3.1_Windows_10.png
"Ventana de buscar ruta de carpeta PHP de Windows 10")


![Marcar_carpeta_PHP_variables_entorno](docs\assets\images\Variables_entorno\05_Editar_variable_de_entorno_PHP7.3_Windows_10.png
"Ventana de Marcar carpeta PHP de Windows 10")

y marcando el texto "C:\wamp64\bin\php\php7.3.1".



Finalmente podemos probar nuestro comando instalado usando el comando "php -i"
en nuestro terminal (cmd).
```shell
$ php -i
```

> De la misma manera en que podemos crear una variable de entorno para php, es
> que podemos hacerlo para múltiples programas como puede ser mysql, node,
> mongodb y otros software de nuestro interés.

---

#### 1.2 COMPOSER
```shell
$ composer -v
```
if not haved installed composer, get installer on [COMPOSER INSTALLER](https://getcomposer.org/Composer-Setup.exe)

#### 1.3 NPM
```shell
$ npm -v
```
if not haved installed npm, get installer on [NPM INSTALLER](https://nodejs.org/es/)

#### 1.4 YARN
```shell
$ yarn -v
```
if not haved installed yarn, get installer on [YARN INSTALLER](https://yarnpkg.com/latest.msi)

#### 1.5 GIT
Installed git on system

```shell
$ git -v
```
if not haved installed git, get installer on [GIT INSTALLER](https://git-scm.com/downloads)


### 2. Install project
1. Open the terminal, navigate to your project directory on Web Server for clone
   the project of SCHEDUS

```shell
$ git clone https://www.github.com/andgar2010/SCHEDUS2.git
```

2. Run the following command at the terminal. Una vez instalado laravel es recomendable situarse en la raíz del proyecto y ejecutar:
```shell
$ cd SCHEDUS2
$ composer install && yarn install
```

3. If no haved Setting the database configuration, open .env file at project root directory
```
DB_DATABASE=**your_db_name**
DB_USERNAME=**your_db_user**
DB_PASSWORD=**password**
```
4. if not haved APP_KEY in .env
```shell
$ php artisan key:generate
```

5. Run the following command at the terminal for worked page on server
```php
$ php artisan serve
```

## How To Update
- Open the terminal, navigate to your project directory.
```php
$ composer update
$php artisan key:generate
```

## Backend URL
```php
/admin/login
```
- default email : admin@SCHEDUS.com
- default password : 123456

## What's Next
- [How To Create A Module (CRUD)](./how-to-create-module.md)

## Table Of Contents
- [Back To Index](./index.md)


# Crear Modelo/Tabla desde consola ARTISAN

```php
php artisan make:model Models/Nombre_tabla -m
```
parametro -m:
crear automaticamente un archivo de migracion para DB

crear 2 archivos son:
- Model/Nombre_tabla.php
- database/migrations/yyyy_mm_ddhhmm_create_nombreTabla_table.php


Con el comando es **deshacer la última migración ejecutada** y registrada en la
base de datos.
```php
php artisan migrate:rollback
```

Con el comando es **deshacer todas** las migraciones de la base de datos.
```php
php artisan migrate:reset
```

Un comando extra que nos permite **actualizar las migraciones** es el comando, el
cual es equivalente a usar php artisan migrate:reset y después php artisan migrate.
```php
php artisan migrate:refresh
```


## Soluciones típicas por fallas comunes

###Laravel 5 clear cache from route, view, config and all cache data from application

Reoptimized class loader:

```php
php artisan optimize
```

Clear Cache facade value:
```php
php artisan cache:clear
```

Clear Route cache:
```php
php artisan route:cache
```

Clear View cache:
```php
php artisan view:clear
```

Clear Config cache:
```php
php artisan config:cache
```
