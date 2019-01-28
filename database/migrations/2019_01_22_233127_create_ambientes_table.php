<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAmbientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ambiente', function (Blueprint $table) {
            $table->increments('ambiente_id');
            $table->string('ambiente_num');
            $table->integer('sede_cod')->unsigned()->index()->nullable();
            $table->foreign('sede_cod')->references('sede_id')->on('sede');
            $table->integer('estado_ambiente_cod')->unsigned()->index()->nullable();
            $table->foreign('estado_ambiente_cod')->references('estado_ambiente_id')->on('estado_ambiente');
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
        Schema::dropIfExists('ambiente');
    }
}
