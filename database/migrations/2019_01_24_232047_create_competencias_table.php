<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompetenciasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('competencia', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('programa_formacion_cod')->unsigned()->index()->nullable();
            $table->foreign('programa_formacion_cod')->references('id')->on('programa_formacion');
            $table->string('competencia_num');
            $table->string('competencia_name');
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
        Schema::dropIfExists('competencia');
    }
}
