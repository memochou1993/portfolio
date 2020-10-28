<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RenameDateInWorksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('works', function ($table) {
            $table->renameColumn('date', 'begin_date');
            $table->string('end_date')->after('date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('works', function ($table) {
            $table->dropColumn('end_date');
            $table->renameColumn('begin_date', 'date');
        });
    }
}
