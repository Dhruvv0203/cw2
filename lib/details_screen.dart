import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, String> recipe;

  const DetailsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(recipe["name"]!)),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(recipe["image"]!, width: double.infinity, height: 250, fit: BoxFit.cover), // Full image
              SizedBox(height: 10),
              Text("Ingredients:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(recipe["ingredients"]!, style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Text("Instructions:", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text(recipe["instructions"]!, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
