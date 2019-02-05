<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ModifyColumnsFichaIdOnGrupoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('grupo', function (Blueprint $table) {
            $table->renameColumn('ficha_cod', 'ficha_id')->unsigned()->index()->nullable();
            $table->foreign('ficha_id')->references('id')->on('ficha');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('grupo', function (Blueprint $table) {
            $table->renameColumn('ficha_id', 'ficha_cod');
        });
    }
}
