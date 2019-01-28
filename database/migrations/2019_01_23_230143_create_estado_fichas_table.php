<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstadoFichasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('estado_ficha', function (Blueprint $table) {
            $table->increments('estado_ficha_id');
            $table->string('estado_ficha_name')->unique();
            $table->integer('estado_ficha_color')->unsigned()->index()->nullable();
            $table->foreign('estado_ficha_color')->references('status_color_id')->on('status_color');
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
        Schema::dropIfExists('estado_ficha');
    }
}
