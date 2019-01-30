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
            $table->increments('id');
            $table->integer('programa_formacion_codigo');
            $table->string('programa_formacion_short_name');
            $table->string('programa_formacion_name')->unique();
            $table->string('programa_formacion_version');
            $table->integer('nivel_programa_formacion_cod')->unsigned()->index()->nullable();
            $table->foreign('nivel_programa_formacion_cod')->references('id')->on('nivel_programa_formacion');
            $table->integer('proyecto_cod')->unsigned()->index()->nullable();
            $table->foreign('proyecto_cod')->references('id')->on('proyecto');
            $table->integer('estado_programa_formacion_cod')->unsigned()->index()->nullable();
            $table->foreign('estado_programa_formacion_cod')->references('id')->on('estado_programa_formacion');
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
