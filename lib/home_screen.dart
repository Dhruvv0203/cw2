import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {"name": "Pancakes", "image": "assets/Pancake.png", "ingredients": "Flour, Eggs, Milk", "instructions": "Mix and fry."},
    {"name": "Pizza", "image": "assets/Pizza.png", "ingredients": "Dough, Cheese, Tomato Sauce", "instructions": "Bake at 400°F."},
    {"name": "Pasta", "image": "assets/Pasta.png", "ingredients": "Pasta, Olive Oil, Parmesan", "instructions": "Boil and mix."},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Book")),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(recipes[index]["image"]!, width: 50, height: 50), // Display image
              title: Text(recipes[index]["name"]!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(recipe: recipes[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
