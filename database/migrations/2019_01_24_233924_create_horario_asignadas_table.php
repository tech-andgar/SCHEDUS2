<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHorarioAsignadasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('horario_asignada', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('trimestre_id')->unsigned()->index()->nullable();
            $table->foreign('trimestre_id')->references('id')->on('trimestre');
            $table->integer('modo_id')->unsigned()->index()->nullable();
            $table->foreign('modo_id')->references('id')->on('modo');
            $table->integer('ruta_ficha_id')->unsigned()->index()->nullable();
            $table->foreign('ruta_ficha_id')->references('id')->on('ruta_ficha');
            $table->string('trimestre_ficha');
            $table->integer('resultado_aprendizaje_id')->unsigned()->index()->nullable();
            $table->foreign('resultado_aprendizaje_id')->references('id')->on('resultado_aprendizaje');
            $table->integer('instructor_id')->unsigned()->index()->nullable();
            $table->foreign('instructor_id')->references('id')->on('cms_users');
            $table->integer('dias_id')->unsigned()->index()->nullable();
            $table->foreign('dias_id')->references('id')->on('dias');
            $table->time('hora_inicio');
            $table->time('hora_fin');
            $table->integer('ambiente_id')->unsigned()->index()->nullable();
            $table->foreign('ambiente_id')->references('id')->on('ambiente');
            $table->integer('estado_horario_asignada_id')->unsigned()->index()->nullable();
            $table->foreign('estado_horario_asignada_id')->references('id')->on('estado_horario_asignada');
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
        Schema::dropIfExists('horario_asignada');
    }
}
