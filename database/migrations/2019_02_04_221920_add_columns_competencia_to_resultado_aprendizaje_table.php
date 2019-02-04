<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumnsCompetenciaToResultadoAprendizajeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('resultado_aprendizaje', function (Blueprint $table) {
            $table->integer('competencia_id')->unsigned()->index()->nullable();
            $table->foreign('competencia_id')->references('id')->on('competencia');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('resultado_aprendizaje', function (Blueprint $table) {
            //
        });
    }
}
