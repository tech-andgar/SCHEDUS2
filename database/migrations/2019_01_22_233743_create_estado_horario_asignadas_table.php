<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstadoHorarioAsignadasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('estado_horario_asignada', function (Blueprint $table) {
            $table->increments('estado_horario_asignada_id');
            $table->string('estado_horario_asignada_name')->unique();
            $table->integer('estado_horario_asignada_color')->unsigned()->index()->nullable();
            $table->foreign('estado_horario_asignada_color')->references('status_color_id')->on('status_color');
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
        Schema::dropIfExists('estado_horario_asignada');
    }
}
