<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProgramaFormacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('programa_formacion', function (Blueprint $table) {
            $table->increments('programa_formacion_id');
            $table->integer('programa_formacion_codigo');
            $table->string('programa_formacion_short_name');
            $table->string('programa_formacion_name')->unique();
            $table->string('programa_formacion_version');
            $table->integer('nivel_programa_formacion_cod');
            $table->integer('proyecto_cod');
            $table->integer('estado_programa_formacion_cod');
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
        Schema::dropIfExists('programa_formacion');
    }
}
