<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(){
        
        $faker = \Faker\Factory::create();
 
        // Create 50 product records
        for ($i = 0; $i < 50; $i++) {
            Product::create([
                'title' => $faker->name(),
                'description' => $faker->paragraph(),
                'price' => $faker->randomNumber(2),
                'namefile_img' => $faker->title(),
                'availability' => $faker->boolean(50)
            ]);
        }
    }
}
