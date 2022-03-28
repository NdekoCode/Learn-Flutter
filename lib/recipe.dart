import 'package:flutter/material.dart';

class Recipe {
  // Le titre de la recette
  String? title;
  // L'utilisateur de la recette
  String? user;
  // La date de publication de la recette
  String? date;
  // L'URL ou le chemin  de l'Image
  String? imageUrl;
  // Description de la recette
  String? description;
  // Pour gerer l'icon favorite
  bool? isFavorited;
  // Le nombre des favorite
  int? favoriteCount;

  Recipe(
      {this.title,
      this.user,
      this.date,
      this.imageUrl,
      this.description,
      this.isFavorited,
      this.favoriteCount});
}
