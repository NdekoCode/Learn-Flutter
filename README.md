# Apprendre Flutter en 2 minutes

## Afficher du text

La premiere chose que l'on apprend dans un language c'est comment afficher `Hello World` et pour faire cela avec flutter on utilise le Widget `Text()` et pour y mettre du texte vous n'avez qu'à le lui passer en parametre car le constructeur de ce Widget prend en premier parametre le texte à afficher, par exemple: `Text("Hello World")` et si vous voulez afficher une variable vous faite par exemple `Text("Hello World: $LeNomDeLaVariableAafficher")`.
Ce widget prend les parametres suivant dont à partir du deuxieme sont optionnel

- text: Qui est le texte à afficher
- style: Pour mettre des styles sur les textes, ce meme parametre prend un Widget en parametre qui est `TextStyle()` et ce Widget Prend aussi plusieurs parametre comme 
                - fontFamily : La police à utiliser sur le texte, prealablement chargement dans le fichier `pubspec.yaml`
                - color: La couleur du texte,
                - fontSize: La taille du texte,
                - fontWeight: La graisseur du texte,
                - decoration: pour la decoration du texte, soit en underline, overline, outline,...
                - letterSpacing: Pour les espaces entre les lettres,
                - wordSpacing: Pour les espaces entre les mots,
                - shadows: Qui est un tableau contenant les ombres à utiliser sur le texte mais generalement ce tableau contient un Widget qui `Shadow()` qui prend different parametre comme `color` la couleur de l'ombre, `offset` prend les dispositions de l'ombre par `x` et `y` ie `offet: Offet(x,y)`, le `blurRadius` qui gère le flou sur l'ombre du texte
- textAlign: Pour disposer le texte soit à gauche,à droite, au centre ou en bas

Par exemple: 

```{DART}
    child: Text("Hello World: $nbrVues à ${date.hour}H",
        style: TextStyle(
            fontFamily: 'SF UI Display',
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.red,
            letterSpacing: 3,
            wordSpacing: 15,
            shadows: [
                Shadow(
                    color: Colors.redAccent,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 10.0)
            ]),
        textAlign: TextAlign.center)

```

## Les boutons
