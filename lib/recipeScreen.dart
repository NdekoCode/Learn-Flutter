import 'package:flutter/material.dart';
import 'package:learn_flutter/favoriteWidget.dart';
// On importe la dependance transparent_image pour faire des images transparent
// import 'package:transparent_image/transparent_image.dart';
// On importe la dependance cached_network_image pour mettre des images en cache
// import 'package:cached_network_image/cached_network_image.dart';

// La classe  representant la page d'acceuil de notre application
class RecipeScreen extends StatelessWidget {
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
                      child: Text("Pizza Fracile",
                          // On lui met un style ici c'est une graissage et une taille de police
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25))),
                  Container(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("Par Arick Bulakali",
                          style: TextStyle(
                              color: Colors.grey[500], fontSize: 20))),
                  Text("Fait le 25 mars 2022",
                      style: TextStyle(color: Colors.grey[500], fontSize: 16))
                ],
              ),
            ),
            FavoriteWidget(favoriteCount: 24, isFavorited: false)
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
        child: Text(
            "Faire cuire dans une poele les lardons et les champignons. \nDans un bol, verser la boite de concentrer de tomate, y ajouter un demi verre d'eau, ensuite mettre un carré de sucre(Pour enlever l'acidité de la tomate) une pincée de sel, de poivre et une pincée d'herbe de Provence\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Modi, ducimus corporis odio delectus ut cum eveniet, labore sed quis iusto veniam veritatis. Asperiores iusto commodi eaque, maiores ducimus fuga cum neque? Soluta, eos, accusamus cupiditate dicta ducimus esse nihil non nesciunt suscipit culpa vel perspiciatis omnis animi aspernatur labore fugit maiores iste! Voluptate, quas voluptates expedita aut quae sapiente modi porro numquam accusamus quia ducimus dolor possimus inventore maxime, saepe totam. Velit neque animi sit repellat explicabo a aliquam consectetur quas, dolores omnis minus voluptatibus repellendus veniam ab? Nihil, fugiat. Facere debitis commodi hic dolor, ipsum a dolorem numquam fuga dicta esse eligendi voluptatibus? Vel officia nisi exercitationem sequi vitae. Velit culpa, placeat, aspernatur pariatur, suscipit commodi blanditiis tenetur deleniti porro perspiciatis fugit ullam minus repudiandae sit magnam voluptate minima quia? Minus dolorem, ipsam ut et cum consequuntur officia placeat cumque sit porro dolor nesciunt obcaecati in ipsum dolores doloribus molestiae voluptas neque omnis hic. Minus, aut aspernatur distinctio possimus nisi repellat deserunt incidunt ea corrupti odit temporibus est dolor nulla rerum vero numquam corporis quo quis laboriosam accusantium enim maxime aliquam consequuntur. Ea molestiae illo neque dolore accusamus possimus dignissimos nulla error, beatae libero repellat eligendi blanditiis. Rem, illum saepe expedita excepturi dignissimos, sapiente unde nulla voluptatibus fugit minus consequuntur. Quod modi mollitia blanditiis porro nemo earum rerum, quis pariatur repellat officiis inventore laborum aperiam placeat harum iusto vel consectetur, exercitationem possimus nihil nulla maxime. Adipisci obcaecati nisi reiciendis dignissimos nostrum repellendus, sapiente id fuga. Expedita dolor ducimus labore blanditiis soluta ipsam corporis, voluptas ea totam, ut dicta ratione veritatis saepe ab distinctio sed, molestiae est odit tempore necessitatibus error. Reprehenderit, repudiandae repellendus? Ullam quam eos, iure ad dolor distinctio ipsum corrupti reprehenderit veniam odio, quas suscipit necessitatibus ducimus enim expedita deserunt. Aut dolorem sunt temporibus, mollitia eius corrupti?",

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
              Image.asset('./assets/images/pizza1.jpg',
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
