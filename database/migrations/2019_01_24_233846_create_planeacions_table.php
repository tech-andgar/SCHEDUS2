<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePlaneacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('planeacion', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('actividad_proyecto_id')->unsigned()->index()->nullable();
            $table->foreign('actividad_proyecto_id')->references('id')->on('actividad_proyecto');
            $table->integer('resultado_aprendizaje_id')->unsigned()->index()->nullable();
            $table->foreign('resultado_aprendizaje_id')->references('id')->on('resultado_aprendizaje');
            $table->integer('jornada_id')->unsigned()->index()->nullable();
            $table->foreign('jornada_id')->references('id')->on('jornada');
            $table->integer('trimestre')->unsigned()->nullable();
            $table->integer('modo_id')->unsigned()->index()->nullable();
            $table->foreign('modo_id')->references('id')->on('modo');
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
        Schema::dropIfExists('planeacion');
    }
}
