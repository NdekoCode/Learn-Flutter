// On importe tous les outils de dart
import 'package:flutter/material.dart';
import 'package:learn_flutter/recipeScreen.dart';
import 'package:learn_flutter/recipe.dart';

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
        home: RecipeScreen(
            recipe: Recipe(
                title: "Pizza facile",
                user: "Par Arick Bulakali",
                date: "Fait le 27 mars 2022",
                imageUrl: "./assets/images/pizza1.jpg",
                isFavorited: false,
                favoriteCount: 54,
                description:
                    "Faire cuire dans une poele les lardons et les champignons. \nDans un bol, verser la boite de concentrer de tomate, y ajouter un demi verre d'eau, ensuite mettre un carré de sucre(Pour enlever l'acidité de la tomate) une pincée de sel, de poivre et une pincée d'herbe de Provence\nLorem ipsum dolor, sit amet consectetur adipisicing elit. Modi, ducimus corporis odio delectus ut cum eveniet, labore sed quis iusto veniam veritatis. Asperiores iusto commodi eaque, maiores ducimus fuga cum neque? Soluta, eos, accusamus cupiditate dicta ducimus esse nihil non nesciunt suscipit culpa vel perspiciatis omnis animi aspernatur labore fugit maiores iste! Voluptate, quas voluptates expedita aut quae sapiente modi porro numquam accusamus quia ducimus dolor possimus inventore maxime, saepe totam. Velit neque animi sit repellat explicabo a aliquam consectetur quas, dolores omnis minus voluptatibus repellendus veniam ab? Nihil, fugiat. Facere debitis commodi hic dolor, ipsum a dolorem numquam fuga dicta esse eligendi voluptatibus? Vel officia nisi exercitationem sequi vitae. Velit culpa, placeat, aspernatur pariatur, suscipit commodi blanditiis tenetur deleniti porro perspiciatis fugit ullam minus repudiandae sit magnam voluptate minima quia? Minus dolorem, ipsam ut et cum consequuntur officia placeat cumque sit porro dolor nesciunt obcaecati in ipsum dolores doloribus molestiae voluptas neque omnis hic. Minus, aut aspernatur distinctio possimus nisi repellat deserunt incidunt ea corrupti odit temporibus est dolor nulla rerum vero numquam corporis quo quis laboriosam accusantium enim maxime aliquam consequuntur. Ea molestiae illo neque dolore accusamus possimus dignissimos nulla error, beatae libero repellat eligendi blanditiis. Rem, illum saepe expedita excepturi dignissimos, sapiente unde nulla voluptatibus fugit minus consequuntur. Quod modi mollitia blanditiis porro nemo earum rerum, quis pariatur repellat officiis inventore laborum aperiam placeat harum iusto vel consectetur, exercitationem possimus nihil nulla maxime. Adipisci obcaecati nisi reiciendis dignissimos nostrum repellendus, sapiente id fuga. Expedita dolor ducimus labore blanditiis soluta ipsam corporis, voluptas ea totam, ut dicta ratione veritatis saepe ab distinctio sed, molestiae est odit tempore necessitatibus error. Reprehenderit, repudiandae repellendus? Ullam quam eos, iure ad dolor distinctio ipsum corrupti reprehenderit veniam odio, quas suscipit necessitatibus ducimus enim expedita deserunt. Aut dolorem sunt temporibus, mollitia eius corrupti?")));
  }
}
