<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstadoAmbientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('estado_ambiente', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->unique();
            $table->integer('status_color_id')->unsigned()->index()->nullable();
            $table->foreign('status_color_id')->references('id')->on('status_color');
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
        Schema::dropIfExists('estado_ambiente');
    }
}
