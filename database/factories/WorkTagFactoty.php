<?php

use Faker\Generator as Faker;

$factory->define(App\WorkTag::class, function (Faker $faker) {
    return [
        'name' => $faker->colorName,
        'work_id' => $faker->numberBetween($min = 1, $max = 20),
    ];
});
