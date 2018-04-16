<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        App\User::create([
            'name' => '周孝威',
            'email' => 'hoshizora19931120@hotmail.com',
            'password' => bcrypt('a90O100339715'),
        ]);
    }
}
