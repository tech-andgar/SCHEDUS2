<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateResultadoAprendizajesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('resultado_aprendizaje', function (Blueprint $table) {
            $table->increments('id');
            $table->string('num')->nullable();
            $table->string('name');
            $table->integer('competencia_id')->unsigned()->index();
            $table->foreign('competencia_id')->references('id')->on('competencia');
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
        Schema::dropIfExists('resultado_aprendizaje');
    }
}
