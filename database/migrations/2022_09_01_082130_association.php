<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Association extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('association', function (Blueprint $table) {
            $table->id();
            $table->string('name_association');
            $table->string('email_association')->unique();
            $table->timestamp('email_association_verified_at')->nullable();
            $table->string('password_association');
            $table->string('adresse_association');
            $table->string('sector_activity');
            $table->rememberToken();
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
        Schema::dropIfExists('association');

    }
}
