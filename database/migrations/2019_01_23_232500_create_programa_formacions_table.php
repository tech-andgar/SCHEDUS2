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
            $table->integer('code');
            $table->string('short_name');
            $table->string('name')->unique();
            $table->string('version');
            $table->integer('nivel_programa_formacion_id')->unsigned()->index()->nullable();
            $table->foreign('nivel_programa_formacion_id')->references('id')->on('nivel_programa_formacion');
            $table->integer('proyecto_id')->unsigned()->index()->nullable();
            $table->foreign('proyecto_id')->references('id')->on('proyecto');
            $table->integer('estado_programa_formacion_id')->unsigned()->index()->nullable();
            $table->foreign('estado_programa_formacion_id')->references('id')->on('estado_programa_formacion');
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
