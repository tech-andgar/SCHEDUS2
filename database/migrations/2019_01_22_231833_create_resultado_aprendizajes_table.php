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
            $table->increments('resultado_aprendizaje_id');
            $table->integer('resultado_aprendizaje_num');
            $table->string('resultado_aprendizaje_name');
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
