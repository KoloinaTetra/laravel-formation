<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\{ User, Product, Category };

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // User::factory(10)->create();
        
        // Product::factory(10)->create();
        Category::factory()
                ->has(Product::factory()->count(4))
                ->count(10)
                ->create();
                
    
    }
}
