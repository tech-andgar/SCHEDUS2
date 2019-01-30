<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateFichasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ficha', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code');
            $table->integer('estado_ficha_id')->unsigned()->index()->nullable();
            $table->foreign('estado_ficha_id')->references('id')->on('estado_ficha');
            $table->integer('programa_formacion_id')->unsigned()->index()->nullable();
            $table->foreign('programa_formacion_id')->references('id')->on('programa_formacion');
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
        Schema::dropIfExists('ficha');
    }
}
