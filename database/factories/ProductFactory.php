<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;


class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */

    protected $model = Product::class;

    public function definition()
    {
        return [
            'title' => $this->faker->title,
            'description' => $this->faker->paragraph,
            'price' => $this->faker->randomNumber(2),
            'availability' => $this->faker->boolean(50),
            'namefile_img' => $this->faker->name,
            'remarque' => $this->faker->text
        ];
    }
}
