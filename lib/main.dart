// On importe tous les outils de dart
import 'package:flutter/material.dart';
import 'package:learn_flutter/recipeScreen.dart';

void main() {
  // la porte d'entrer de mon application
  runApp(MyApp());
}

// Represente notre application
class MyApp extends StatelessWidget {
  // On construit notre appli, en definissant ses elements principaux
  @override
  Widget build(BuildContext context) {
    // Les elements principaux de notre application
    return MaterialApp(
        // Le tritre de notre app
        title: 'App Flutter',
        debugShowCheckedModeBanner: false,
        // Le theme de notre appli
        theme: ThemeData(
          // La couleur de mon appli
          primarySwatch: Colors.blue,
        ),
        // Composition de Notre page d'acceuil
        home: RecipeScreen());
  }
}
