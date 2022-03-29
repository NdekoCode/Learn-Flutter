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


    var nbrVues = 315;
    var date = DateTime.now();
    ...
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

 Flutter a déjà créer plusieurs type de boutons pour nous faciliter la vie et dans ces types on a:

### FlatButton

Qui est utiliser par exemple dans les popUp ou card, etant donnée qu'il a été deprecier il est recommandé d'utiliser le `TextButton`

exemple:

```{DART}
// Le remplacant de FlatButton
TextButton(
    child: Text("Ok"),
    onPressed: () {
    print("Vous avez cliquer sur OKAY");
    })
```

### RaisedButton et OutlineButton

Sont exactement comme le `TextButton` ou le `FlatButton`(Deprecier) mais le `RaisedButton` permet d'avoir un impacte visuel très important en mettant un background grise sur son bouton mais il a été aussi déprécier et il est recommander d'utiliser le `ElevatedButton` quand au `OutlineButton` il a une bordure grise mais pas de background grise mais il permet aussi d'avoir un impact visuel important, lui aussi il est deprecier et il est recommander l'Utiliser `OutlinedButton`

exemple:

```{DART}
// Le remplacant de RaisedButton
ElevatedButton(
    child: Text("Raised"),
    onPressed: () {
    print("Vous avez cliquer sur Raised");
    })


    // Le remplacant de OutlineButton
OutlinedButton(
    child: Text("Outline"),
    onPressed: () {
    print("Vous avez cliquer sur Outline");
    })

```

### ButtonBar

Il est utile si vous souhaiter aligner Horizontalement deux element de type Button à droite
comme par exemple dans une `PopUp` de confirmation avec un `Ok` et un `cancel`
il prend en parametre un `children` qui va contenir une liste de `Widget` et type `Button` que vous souhaiter `afficher`
par exemple:

```{DART}
return Scaffold(
        body: Center(
            child: Container(
                child: ButtonBar(
                    alignment: MainAxisAlignment.center,
                    children: <Widget>[
          OutlinedButton(
              child: Text("Ok"),
              onPressed: () {
                print("Vous avez cliquer sur OKAY");
              }),
          ElevatedButton(
              child: Text("Cancel"),
              onPressed: () {
                print("Vous avez appuyer sur `Annuler`");
              })
        ]))));

```

### PopupMenuButton

Ce widget porte bien son nom, c'est une icon à 3 points vertical qui affiche un menu, il peut etre utiliser dans une `AppBar` par exemple pour etre rediriger vers d'autres ecrans.
il prend comme parametre:

- itemBuilder: Qui va etre une fonction qui retourne une liste(Tableau) contenant par indice un `PopupMenuItem` et ce `PopupMenuItem` contient deux parametre principale qui sont `child` et `value`, `value` est un entier qui est considerer un peu comme en quelques sorte l'ordre avec lequel on va afficher le menu dans le `Popup`
par exemple:

```{DART}
return Scaffold(
    body: Center(
        child: Container(
            child: PopupMenuButton(
                itemBuilder: (ctx) => [
                        PopupMenuItem(value: 1, child: Text("Setting")),
                        PopupMenuItem(value: 2, child: Text("Profile"))
                    ]))));
```

### IconButton

Si vous souhaiter avoir une icon Clickable, c'est très simple il suffit d'utiliser les Widget `IconButton` il prend les parametres suivant, `icon` qui est l'Icon que l'on souhaite utiliser souvant on les tires dans le Widget `Icons.IconAUtiliser` et le parametre onPressed qui est l'action qui survient lors de l'Appui sur ce boutton

### DropdownButton

Pour ce bouton vous devez etre dans un `StatefulWidget` car en dehors d'un `StatefulWidget` il genera une erreur.
Le `DropdownButton` peut etre très utile pour afficher une liste avec un seul element à selectionner comme par exemple le choix d'une option.
Ce widget prend plusieurs parametres qui sont:

- `value`: qui est la valeur de depart du `DropdownButton` et cette valeur correspond à la valeur d'un de ces items.
- `items`:Qui correspond à une liste de Widget `DropdownMenuItem` qui est la liste des items disponible dans le button `DropdownButton` ce Widget aussi prend deux parametre necessaire qui sont `child` contenant la description de cet item et `value` la valeur correspondante à l'item, cette valeur est utiliser pour selectionner un `item` dans `DropdownButton`
- onChanged: Qui est une action qui est executer quand on change d'item dans le Widget `DropdownButton`

Pour utiliser ce `DropdownButton` vous aurez besoin d'un `setState()` pour permettre à votre application de `rebuild` avec les nouvelles données du `Widget` et ici c'est le Widget `DropdownMenuItem`  qui a une value correspondant à celle du Widget Parent, ce parametre contiendra une fonction qui prendra en parametre la nouvelle valeur de l'item selectionner qui sera transferer de maniere implicite.
Par exemple on a:

```{DART}
return Scaffold(
        body: Center(
            child: Container(
                child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(value: 1, child: Text("Select 1")),
                      DropdownMenuItem(value: 2, child: Text("Select 2"))
                    ],
                    onChanged: (int? value) {
                      setState(() {
                        _value = value!;
                        print(value);
                      });
                    }))));
```

### FloatinActionButton

Qui est generalement utiliser comme action principale de la page, ou action principale de l'application
pour envoyer un message ou ajouter un colis par exemple
il prend le parametre `child` qui va contenir un peu le contenu de ce bouton en generale c'est une icon et `onPressed` qui est l'action qui suit l'appuis sur ce bouton
par exemple:

```{DART}
return Scaffold(
        body: Center(
            child: Container(
                child: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      print("Vous avez ajouter un element");
                    }))))
```

## Row et Column

Permet d'afficher plusieurs elements aligner selon les ligne et les colonnes
Au sein d'une `Row` et `Column` nous avons la possibilité d'aligner sur l'axe des X avec mainAxisAlignment et sur l'axe des Y avec crossAxisAlignement
![Alignement vertical et Horizontal des Widget](./assets/images/Learn-%20Alignement%20Horizontale%20et%20vertical%20des%20widget.PNG)

### Row

Permet d'aligner horizontalement

### Column

Permet d'aligner verticalement

### Exemple de row Et column

![Exemple d'une implementation des Row et Column](./assets/images/Learn-%20Example%20de%20Row%20et%20Column%20dans%20Flutter.PNG)
