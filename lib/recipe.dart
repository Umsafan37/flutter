import 'package:flutter/material.dart';

class Recipe {
  String label;
  String imageUrl;
  // TODO: Add servings and ingredients here

  Recipe(
    this.label,
    this.imageUrl,
  );
  static List<Recipe> samples = [
    Recipe(
      'Spaghetti and Meatballs',
      'assets/images.jpg',
    ),
    Recipe(
      'Tomato Soup',
      'assets/tomato.jpg',
    ),
    Recipe(
      'Grilled Cheese',
      'assets/grilled.jpg',
    ),
    Recipe(
      'Chocolate Chip Cookies',
      'assets/chocalate.jpg',
    ),
    Recipe(
      'Taco Salad',
      'assets/salad.jpg',
    ),
    Recipe(
      'Hawaiian Pizza',
      'assets/pizza.jpg',
    ),
  ];
}

// TODO: Add Ingredient() here
