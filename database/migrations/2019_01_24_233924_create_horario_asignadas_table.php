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
            $table->integer('trimestre_cod')->unsigned()->index()->nullable();
            $table->foreign('trimestre_cod')->references('id')->on('trimestre');
            $table->integer('modo_cod')->unsigned()->index()->nullable();
            $table->foreign('modo_cod')->references('id')->on('modo');
            $table->integer('ruta_ficha_cod')->unsigned()->index()->nullable();
            $table->foreign('ruta_ficha_cod')->references('id')->on('ruta_ficha');
            $table->string('trimestre_ficha');
            $table->integer('resultado_aprendizaje_cod')->unsigned()->index()->nullable();
            $table->foreign('resultado_aprendizaje_cod')->references('id')->on('resultado_aprendizaje');
            $table->integer('instructor_cod')->unsigned()->index()->nullable();
            $table->foreign('instructor_cod')->references('id')->on('cms_users');
            $table->integer('dias_cod')->unsigned()->index()->nullable();
            $table->foreign('dias_cod')->references('id')->on('dias');
            $table->time('horario_asignada_hora_inicio');
            $table->time('horario_asignada_hora_fin');
            $table->integer('ambiente_cod')->unsigned()->index()->nullable();
            $table->foreign('ambiente_cod')->references('id')->on('ambiente');
            $table->integer('estado_horario_asignada_cod')->unsigned()->index()->nullable();
            $table->foreign('estado_horario_asignada_cod')->references('id')->on('estado_horario_asignada');
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
