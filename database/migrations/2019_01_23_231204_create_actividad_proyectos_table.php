<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActividadProyectosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('actividad_proyecto', function (Blueprint $table) {
            $table->increments('id');
            $table->string('code', 5);
            $table->string('name')->unique();
            $table->integer('proyecto_id')->unsigned()->index()->nullable();
            $table->foreign('proyecto_id')->references('id')->on('proyecto');
            $table->integer('fase_id')->unsigned()->index()->nullable();
            $table->foreign('fase_id')->references('id')->on('fase');
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
        Schema::dropIfExists('actividad_proyecto');
    }

}
