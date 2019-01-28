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
            $table->increments('ficha_id');
            $table->string('ficha_num');
            $table->integer('estado_ficha_cod')->unsigned()->index()->nullable();
            $table->foreign('estado_ficha_cod')->references('estado_ficha_id')->on('estado_ficha');
            $table->integer('programa_formacion_cod')->unsigned()->index()->nullable();
            $table->foreign('programa_formacion_cod')->references('programa_formacion_id')->on('programa_formacion_cod');
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
