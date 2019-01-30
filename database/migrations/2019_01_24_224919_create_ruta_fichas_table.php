<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRutaFichasTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ruta_ficha', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->unique();
            $table->string('number');
            $table->integer('jornada_id')->unsigned()->index()->nullable();
            $table->foreign('jornada_id')->references('id')->on('jornada');
            $table->date('fecha_inicio');
            $table->date('fecha_fin');
            $table->text('observaciones');
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
        Schema::dropIfExists('ruta_ficha');
    }
}
