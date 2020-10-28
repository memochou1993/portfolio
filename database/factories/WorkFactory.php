<?php

use Faker\Generator as Faker;

$factory->define(App\Work::class, function (Faker $faker) {
    return [
        'title' => $faker->realText(rand(10,20)),
        'begin_date' => now()->format('Y-m-d'),
        'end_date' => now()->format('Y-m-d'),
        'content' => $faker->paragraph,
        'full_text' => $faker->paragraph,
    ];
});
