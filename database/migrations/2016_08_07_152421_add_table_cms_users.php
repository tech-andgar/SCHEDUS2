<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AddTableCmsUsers extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cms_users', function (Blueprint $table) {
            $table->increments('id');

            $table->string('dni')->unique();
            $table->string('name')->nullable();
            $table->string('apellido')->nullable();
            $table->string('photo')->nullable();
            $table->string('email')->nullable()->unique();
            $table->string('password')->nullable();
            $table->integer('id_cms_privileges')->nullable();
            $table->integer('rol_cod');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('cms_users');
    }
}
