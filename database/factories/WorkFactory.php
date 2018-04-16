<?php

use Faker\Generator as Faker;

$factory->define(App\Work::class, function (Faker $faker) {
    return [
        'title' => $faker->realText(rand(10,20)),
        'content' => $faker->paragraph,
    ];
});
