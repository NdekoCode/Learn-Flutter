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
