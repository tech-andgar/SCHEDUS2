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

## How To Install

### 1. Pre-requiste verifty on system
Open the terminal, run the following command at the terminal

#### 1.1 PHP
```shell
$ php -i
```
if not haved installed PHP, get installer on [PHP](www.PHP.com) or [wamp](www.wamp.com)

#### 1.2 COMPOSER
```shell
$ composer -v
```
if not haved installed composer, get installer on [COMPOSER INSTALLER](www.composer.com)

#### 1.3 NPM
```shell
$ npm -v
```
if not haved installed npm, get installer on [NPM INSTALLER](www.npm.com)

#### 1.4 YARN
```shell
$ yarn -v
```
if not haved installed yarn, get installer on [YARN INSTALLER](www.yarn.com)

#### 1.5 GIT
Installed git on system

```shell
$ git -v
```
if not haved installed git, get installer on [GIT INSTALLER](www.git.com)


### 2. Install project
1. Open the terminal, navigate to your project directory on Web Server for clone
   the project of SCHEDUS

```shell
$ git clone www.github.com/andgar2010/SCHEDUS2.git
```

2. Run the following command at the terminal
```shell
$ cd SCHEDUS2
$ composer install && yarn install
```

3. Setting the database configuration, open .env file at project root directory
```
DB_DATABASE=**your_db_name**
DB_USERNAME=**your_db_user**
DB_PASSWORD=**password**
```

4. Run the following command at the terminal for worked page on server
```php
$ php artisan serve
```

## How To Update
- Open the terminal, navigate to your project directory.
```php
$ composer update
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
