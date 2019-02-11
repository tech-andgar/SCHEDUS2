# Welcome To SCHEDUS

SCHEDUS is System management schedule of SENA.

## System Requirement and Basic Technical Knowledge
- PHP 5.6.x <= (Recommend PHP 7.2 or higher) and the extensions:
  - Mcrypt
  - OpenSSL
  - Mbstring
  - Tokenizer
  - FileInfo
- Web Server as:
  - Apache 2.4.x or higher with rewrite engine on (mod_rewrite) (Tested) (Recommend Apache 2.4.37 or higher)
  - Nginx 1.11.x or higher (No tested)
- Database that schedus supports, actually can be:
  - MariaDB (Tested)
  - MySQL (No tested)
  - Postgres (No tested)
  - SQLite (No tested)
  - SQL Server (No tested)
- Composer
- Laravel 5.3 <= (Recommend Laravel 5.7 or higher)

# Preparing our working environment.
SCHEDUS needs a web server. It doesn't matter what it is but most of the community uses Apache or Nginx and doing the same will make it easier for you to get help if you need it.

## How To Install

### Installing XAMPP (Windows - Basic Level)
XAMPP is a program that offers us a distribution of Apache, MySQL, PHP and
Perl very simple to install, manage and use. We can download it
[here.](https://https://www.apachefriends.org/es/download.html)

### Installing WAMP (Windows - Intermediate Level)
WampServer refers to a software stack for the Microsoft Windows operating system, created by Romain Bourdon and consisting of the Apache web server, OpenSSL for SSL support, MySQL database and PHP programming language. We can download it
[here.](https://https://www.apachefriends.org/es/download.html)

### Instalación de LAMP (Linux)
LAMP is an archetypal model of web service stacks, named as an acronym of the names of its original four open-source components: the Linux operating system, the Apache HTTP Server, the MySQL relational database management system (RDBMS), and the PHP programming language. The LAMP components are largely interchangeable and not limited to the original selection. As a solution stack, LAMP is suitable for building dynamic web sites and web applications

In Ubuntu or derivatives we can install it with the following commands:
```shell
$ sudo apt-get update
$ sudo apt-get upgrade
$ sudo apt-get install lamp-server^
$ sudo apt-get install php5-mcrypt
$ sudo php5enmod mcrypt
```

After having installed our web server, it is necessary to install composer which is a very useful php dependency manager and which will be discussed later.

### Installation composer (Windows)
The easiest way to install Composer on your Windows computer is to
[download](https://getcomposer.org/Composer-Setup.exe) and execute the file
Composer-Setup.exe, which installs the latest version of Composer and updates
the PATH of your computer so that you can run Composer simply by typing the composer command.

```shell
$ composer -v
```

### Installation composer (Linux)
In ubuntu it will be enough to execute the following commands in the terminal.
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

Open Windows search or Windows 10 button
English: "Edit system environment variables"
Spanish: "Editar las variables de entorno del sistema"

![Propiedades_sistema](docs\assets\images\Variables_entorno\01_Propiedades_del_sistema_Windows_10.png "Ventana
de Propiedades del sistema de Windows 10")

Windows 10 "System Properties" dialog window


and find within the window the button "Environment Variables".


![Variables_entorno](docs\assets\images\Variables_entorno\02_Variables_de_entorno_Windows_10.png "Ventana de Variables
de entorno de Windows 10")

Windows 10 "Environment Variables" dialog window


Once inside this window it is enough to edit the system variable called
Path and add a semicolon symbol (;) to the value of the
variable

![Variables_entorno](./docs/assets/images/Variables_de_entorno_Windows_10.png "Ventana de Variables
de entorno de Windows 10")

![Editar_variables_entorno](docs\assets\images\Variables_entorno\03_Editar_variable_de_entorno_Windows_10.png
"Ventana de Editar Variables de entorno de Windows 10")


Windows 10 "Edit the system variable" window by editing the variable
"Path.


![Buscar_carpeta_variables_entorno](docs\assets\images\Variables_entorno\04_Buscar_carpeta_ruta_php_7.3.1_Windows_10.png
"Ventana de buscar ruta de carpeta PHP de Windows 10")


![Marcar_carpeta_PHP_variables_entorno](docs\assets\images\Variables_entorno\05_Editar_variable_de_entorno_PHP7.3_Windows_10.png
"Ventana de Marcar carpeta PHP de Windows 10")

and marking the text "C:\wamp64\bin\php\php7.3.1".



Finally we can test our installed command using the command in our terminal (cmd).
```shell
$ php -i
```

> In the same way that we can create an environment variable for php, it is
> that we can do it for multiple programs such as mysql, node,
> mongodb and other software of our interest.

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
- default email : schedus@gmail.com
- default password : 123456

## What's Next
- [How To Create A Module (CRUD)](./how-to-create-module.md)

## Table Of Contents
- [Back To Index](./index.md)


# Create Model/Table from ARTISAN console

```php
php artisan make:model Models/Nombre_tabla -m
```
parameter -m:
automatically create a migration file for DB

create 2 files are:
- Model/Name_Table.php
- database/migrations/yyyy_mm_ddhhmm_create_nameTable.php


With the command is **undo the last migration executed** and recorded in the
database.
```php
php artisan migrate:rollback
```

With the command is ** Undo all** database migrations.
```php
php artisan migrate:reset
```

An extra command that allows us to **update the migrations** is the command, the
which is equivalent to using php artisan migrate:reset and then php artisan migrate.
```php
php artisan migrate:refresh
```


## Typical solutions for common faults

### Laravel 5 clear cache from route, view, config and all cache data from application

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
