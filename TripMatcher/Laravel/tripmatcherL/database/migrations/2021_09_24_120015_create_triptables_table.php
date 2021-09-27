<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTriptablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('triptables', function (Blueprint $table) {
            $table->id('Trip_id');
            $table->string('Image');
            $table->string('Title');
            $table->longText('Summary');
            $table->string('Country_id');
            $table->string('Added_date');
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('triptables');
    }
}
