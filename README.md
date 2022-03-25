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
