import 'package:flutter/material.dart';
import 'package:learn_flutter/favoriteWidget.dart';
import 'package:learn_flutter/recipe.dart';
// On importe la dependance transparent_image pour faire des images transparent
// import 'package:transparent_image/transparent_image.dart';
// On importe la dependance cached_network_image pour mettre des images en cache
// import 'package:cached_network_image/cached_network_image.dart';

// La classe  representant la page d'acceuil de notre application
class RecipeScreen extends StatelessWidget {
  const RecipeScreen({Key? key, required this.recipe}) : super(key: key);
  final Recipe recipe;
  // On construit notre page d'accueil
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
        // On met un padding ou un espacement dans toutes les directions pour espacer les elements des alentours
        padding: const EdgeInsets.all(10),
        child:
            // On initialise une ligne
            Row(
          // On lui donne les enfants dont chaque indice sera considerer comme une colonne dans la ligne
          children: [
            // On dit à cette colonne prend toute l'espace disponible qui n'est pas occuper
            Expanded(
              child:
                  // On dit explicitement que le premier indice est une colone
                  Column(
                // La colonne est aligner au debut
                crossAxisAlignment: CrossAxisAlignment.start,
                // Elle aura des elements qui seront placer les un sous les autres
                children: [
                  // Le premier element de la colonne est dans un container
                  Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      // Un noeud de type texte
                      child: Text(recipe.title!,
                          // On lui met un style ici c'est une graissage et une taille de police
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25))),
                  Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(recipe.user!,
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 20))),
                  Text(recipe.date!,
                      style: TextStyle(color: Colors.grey[500], fontSize: 16))
                ],
              ),
            ),
            FavoriteWidget(
                favoriteCount: recipe.favoriteCount!,
                isFavorited: recipe.isFavorited!)
          ],
        ));
    Widget buttonSection = Container(
      padding: const EdgeInsets.all(10),
      child: Row(

          // On met les memes espaces entre les composants
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildButtonColumn(
                color: Colors.blue, icon: Icons.comment, label: "Comment"),
            _buildButtonColumn(
                color: Colors.blue,
                icon: Icons.share,
                label: "Nombre de partage")
          ]),
    );

    Widget descriptionSection = Container(
        padding: const EdgeInsets.all(25),
        // Si vous mettez trop de texte qui peuvent sortir de l'écran, vous aurez une erreurs, alors pour regler ça dans le cas où vous avez mis une `Column` pour contenir vos elements il faut le remplacer par une `ListView` et cela vous permettra d'avoir une vue SCROLLABLE
        child: Text(recipe.description!,

            // Permet de ne pas couper les mots en plein milieu
            softWrap: true));

    // ICI on charge l'image en local, donc dans les assets, pour le charger à partir d'une URL il faut remplacer Image.asset() par Image.network
    // On a remplacer Image.network par La librarie transparent_image
    // Après on va mettre un petit loader le temps du chargement de l'image et pour ça on va mettre un nouveau conteneur qui n'est pas ni une Row ou une Colonne mais plutot une Stack
    // Une stack cela veut dire que l'on va empiler les vues
    // Dans notre cas on va avoir notre loader et par dessus on va mettre notre image et ainsi quand l'image sera entierement telecharger cela va charger mon loader

    return Scaffold(
        // Le navbar de la page
        appBar: AppBar(
          title: Text("Mes recettes"),
        ),
        // Le corps de notre Home
        // Le corps de notrea page sera une tres grande Colonne qui va contenir tous nos composants
        // On remplace `Column` par `ListView` pour avoir une vue scrollable
        body: ListView(
          children: [
            Stack(children: [
              Container(
                  child: Center(
                      child: Image.asset('./assets/images/loader-1.gif')),
                  width: 600,
                  height: 240),
              Image.asset(recipe.imageUrl!,
                  width: 600, height: 240, fit: BoxFit.cover)
            ]),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ));
  }

// On créer une fonction qui nous retourne une colonne centrer
  Column _buildButtonColumn(
      {required Color? color, required IconData? icon, String? label = ""}) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          padding: const EdgeInsets.only(bottom: 5),
          child: Icon(icon, color: color, size: 20)),
      Text(label!,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: color))
    ]);
  }
}
