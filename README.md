# learn_flutter

## Les conteneurs

Les conteneurs c'est une petite boite où on va pouvoir mettre des bouttons, des textes,... à l'interieur
Ici on va voir deux conteneurs, `les colonnes` et `les lignes`.

## StatelessWidget VS StatefulWidget

- StatelessWidget: C'est quelque chose qui ne va jamais changer, càd souvent on les utilisent pour quelque chose qui n'est pas amener à interagir avec l'utilisateur donc qui ne va pas amener à etre modifier tout au long de votre application, par exemple: le nom de votre application, il ne va jamais changer tout au long de votre application
- StatefulWidget: C'est quelque chose qui changer etre amener à changer au cours de notre application, souvent ils sont amener à interagir avec l'utilisateur

## Les Widget

1. Scaffold: Permet d'implementer les choses basic du material design, donc avoir toute la structure d'un projet material design
Souvent un Scaffold il a:

- Une appBar: est la partie qui est en haut, consider un peut comme la navbar en HTML/CSS
- Un body: Le corps de l'application
- Un floatingActionButton: Un boutton flottant

2. Center: Permet de centrer les elements qu'elle contient
3. Text: Permet de mettre du texte et le personnaliser de maniere à l'afficher à l'écran

## Positionnement et disposition des elements

### Column

Supposons que je souhaite mettre dans mon application deux elements l'un en dessous de l'autre, dans ce cas on doit donc le positionner sur une meme colonne et dans notre cas on va utiliser `Column` et il prend des parametre qui sont `children` qui est un tableau contenant les elements qui doivent etre sur cette colonne, `mainAxisAlignment` qui est là où on souhaite positionner verticalement les element de la colonne comme par exemple au center, à gauche, à droite,...
aussi on `crossAxisAlignment` qui permet d'aligner horizontalement nos element soit au centre, à gauche, à droite,...
On utilise colonne pour mettre les elements l'un en dessous de l'autre
Pour ajouter des espacements à un element il faut le mettre dans un `Container`

### Container

Permet d'englober un element et de lui rajouter des espaces ou autres choses,
il prend plusieurs parametres comme:

- child : Qui va etre l'element qui est contenus dans le conteneur
- Le padding: Qui permet d'espace un element de ces autres elements avec des valeurs comme `EdgeInsets.only(bottom:8)` Permet d'ajouter 8px d'espacement en bas de l'elemet

## Les images

Pour ajouter des images dans flutter on doit s'interesser à la partie `assetsBundle Class`; car c'est ici qu'on nous explique comment on ajoute les images dans les `assets` càd directementment dans l'application.
Pour ajouter des images dans notre projets il faut les ajouter dans le fichier `pubspec.yaml` et ainsi les déclarer dans la partie `assets` avec le code suivant comme exemple:

```{YAML}
flutter:
    assets:
        - images/hamilton.jpg
        - images/lafayette.png
```

Dans cet exemple nos images se trouve dans le dossier `images` ainsi pour maintenant charger ces images il faut utiliser la classe Image avec

```{DART}
    Image.asset(
        pathImage,
        width:width,
        height:height,
        fit:FitBox.cover | FitBox.contain
    )
```

Si vous voulez par contre charger une image sur internet alors au lieu d'utiliser `Image.asset()` utiliser plutot `Image.network()` qui prend les memes parametres que `Image.asset()` sauf que à la place il faut mettre

```{DART}
    Image.asset(
        image:'URL',
        width:width,
        height:height,
        fit:FitBox.cover | FitBox.contain
    )
```

Pour charger une image avec un effet d'opacités on utilise souvent des libraries comme `transparent_image` qu'il faut telecharger sur `https://pub.dev` ensuite lors du chargement de l'image il faut utiliser la classe `FadeInImage` avec la methode `memoryNetwork`, cette methode prend les memes parametre de `Image.network()` sauf que il ajoute un autre element qui est le placeholder et c'est placeholder est l'element qui s'affiche si l'image n'est pas encore entierement charger, dès que l'image est entierement charger il est effacer, ainsi le code complet est donc:

```{DART}

    // kTransparentImage: correspond à l'image transparent importer avec la librairie ou bibliotheque `transparent_image` pour faire cet effet d'opacitée au chargement de l'image
    // BoxFit.cover: fait en sorte que l'image puisse s'etendre comme un background-size: cover
FadeInImage.memoryNetwork(
    placeholder: kTransparentImage,
    image: URL,
    width: width,
    height: height,
    fit: BoxFit.cover
)
```

Pour faire un effet de loading en attendant que l'image se chargement on a plusieurs methodes:

1. Premierement en utilisant la classe `Stack` qui est un nouveau conteneur qui n'est pas ni une Row ou une Colonne mais plutot une Stack, Une stack cela veut dire que l'on va empiler les vues les un sur les autres suivant leurs chargements

- En utilisant un loader integrer de Flutter :

```{DART}
Stack(children: [
                // On met le loader au dessus de l'image, le loader va disparaitre dès que l'image sera charger
                Container(
                    width: 600,
                    height: 240,
                    // On centre notre loader en plein milieu pourqu'il ne soit pas deforme
                    child: Center(
                        child: Image.asset('./assets/images/loader-1.gif')
                        )
                ),
                // On empile le container sur l'image qu'on charge en mode transparent
                FadeInImage.memoryNetwork(
                    // Pour que l'image soit transparent ET QU'IL APPARAISSE avec un petit effet de fondus
                    placeholder: kTransparentImage,
                    image:
                        'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover)
              ])
```

- En utilisant un loader Personnaliser avec un gif :

```{DART}
Widget imageSection = Stack(children: [
                // On met le loader au dessus de l'image
                Container(
                    width: 600,
                    height: 240,
                    // On centrer notre loader en plein milieu pourqu'il ne soit pas deforme
                    child: Center(
                        // On dit que le child est une image charger localement
                        child: Image.asset('./assets/images/loader-1.gif'))),
                // On empile le container sur l'image qu'on charge en mode transparent
                FadeInImage.memoryNetwork(
                    // Pour que l'image soit transparent ET QU'IL APPARAISSE avec un petit effet de fondus
                    placeholder: kTransparentImage,
                    image:
                        'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
                    width: 600,
                    height: 240,
                    fit: BoxFit.cover)
              ]);
    
```

2. Deuxiement on utilise pas la classe `Stack` mais plutot la classe `FadeInImage` avec la methode `assetNetwork` qui va s'utiliser de la meme maniere que `Image.memoryNetwork` sauf que dans notre cas on va utiliser l'attribut `placeholder` pour charger le `gif` en local en lui le donnant le chemin de l'image à charger et donc l'exemple en code est:

```{DART}

FadeInImage.assetNetwork(
    // On charge l'image en local
    placeholder: './assets/images/loader-1.gif',
    image: 'https://images.unsplash.com/photo-1593560708920-61dd98c46a4e?ixlib=rb-1.ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',
    width: 600,
    height: 240,
    fit: BoxFit.cover)
```

### Mettre en cache les images avec flutter

Pour mettre en cache une image avec flutter on utilise la librairie `cached_network_image` à telecharger sur `https://pub.dev`
