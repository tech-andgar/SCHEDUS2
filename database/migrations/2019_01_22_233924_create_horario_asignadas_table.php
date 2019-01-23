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
            $table->increments('horario_asignada_id');
            $table->integer('trimestre_cod');
            $table->integer('modo_cod');
            $table->integer('ruta_ficha_cod');
            $table->string('trimestre_ficha');
            $table->integer('resultado_aprendizaje_cod');
            $table->integer('instructor_cod');
            $table->integer('dias_cod');
            $table->time('horario_asignada_hora_inicio');
            $table->time('horario_asignada_hora_fin');
            $table->integer('ambiente_cod');
            $table->boolean('estado_horario_asignado_cod');
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
