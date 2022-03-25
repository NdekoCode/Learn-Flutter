// On importe tous les outils de dart
import 'package:flutter/material.dart';

void main() {
  // la porte d'entrer de mon application
  runApp(MyApp());
}

// Represente notre application
class MyApp extends StatelessWidget {
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
                    child: Text("Pizza Fracile",
                        // On lui met un style ici c'est une graissage et une taille de police
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25))),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text("Par Arick Bulakali",
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 20))),
                Text("Fait le 25 mars 2022",
                    style: TextStyle(color: Colors.grey[500], fontSize: 16))
              ],
            ),
          ),
          Row(children: [
            // On donne une icon comme deuxieme colonne de notre ligne
            Icon(Icons.favorite, color: Colors.red), Text("55")
          ])
        ],
      ));

  // On construit notre appli, en definissant ses elements principaux
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Le tritre de notre app
      title: 'App Flutter',
      debugShowCheckedModeBanner: false,
      // Le theme de notre appli
      theme: ThemeData(
        // La couleur de mon appli
        primarySwatch: Colors.blue,
      ),
      // Composition de Notre page
      home: Scaffold(
          // Le navbar de la page
          appBar: AppBar(
            title: Text("Mes recettes"),
          ),
          // Le corps de notre Home
          // Le corps de notrea page sera une tres grande Colonne qui va contenir tous nos composants
          body: Column(
            children: [titleSection],
          )),
    );
  }
}
