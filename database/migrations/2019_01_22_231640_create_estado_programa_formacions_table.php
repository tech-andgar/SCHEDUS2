<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEstadoProgramaFormacionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('estado_programa_formacion', function (Blueprint $table) {
            $table->increments('id');
            $table->string('estado_programa_formacion_name')->unique();
            $table->integer('estado_programa_color')->unsigned()->index()->nullable();
            $table->foreign('estado_programa_color')->references('id')->on('status_color');
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
        Schema::dropIfExists('estado_programa_formacion');
    }
}
