<?php

use Illuminate\Database\Seeder;

class WorkTagsTableSeeder extends Seeder
{
    public function run()
    {
        $item_tags = factory(App\WorkTag::class, 20)->create();
    }
}
