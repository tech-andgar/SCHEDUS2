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
            $table->increments('ruta_ficha_id');
            $table->string('ruta_ficha_name')->unique();
            $table->string('ruta_ficha_num');
            $table->integer('jornada_cod');
            $table->date('ruta_ficha_fecha_inicio');
            $table->date('ruta_ficha_fecha_fin');
            $table->text('ruta_ficha_observaciones');
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
