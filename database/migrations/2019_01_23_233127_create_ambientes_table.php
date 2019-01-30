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
            $table->increments('id');
            $table->string('number');
            $table->integer('sede_id')->unsigned()->index()->nullable();
            $table->foreign('sede_id')->references('id')->on('sede');
            $table->integer('estado_ambiente_id')->unsigned()->index()->nullable();
            $table->foreign('estado_ambiente_id')->references('id')->on('estado_ambiente');
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
