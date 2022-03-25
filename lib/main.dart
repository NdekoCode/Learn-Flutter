// On import les outils de flutter
import 'package:flutter/material.dart';

// La methode d'entrer de notre application qui retourne runApp(La classe à lancer) qui permet de lancer notre application et l'afficher de facon graphique à l'ecran
void main() {
  runApp(MyApp());
}

// La classe qui modelise mon application
// Toute les classes de flutter herite de widget, ils s'empile les uns sur les autres
// Ici on voit que MyApp HERITE d'un StatelessWidget cela veut dire que toutes les données à l'interieur ne seront plus modifiable au court de l'application
class MyApp extends StatelessWidget {
  // On réecrit la methode "build" de la classe parente qui est `widget` et cette methode "build" nous retourne un Widget sachant que toutes les classe de flutter sont des widget ca sera donc une classe en particulier
  @override
  Widget build(BuildContext context) {
    // MaterialApp est un Widget qui Modelise une application
    return MaterialApp(
      // Le titre ou le nom de l'application
      title: 'Flutter Demo',
      // Permet d'afficher le bannier rouge "Debug"
      debugShowCheckedModeBanner: false,
      // Le theme de mon application, dans mon cas c'est de couleur blue mais on peux le changer en modifiant la valeur de "primarySwatch" à une autre couleurs
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Home represente premiere page de mon application dans notre cas c'est la page d'acceuil, cette application n'a qu'une seule page et cette page est representer par la classe MyHomePage
      home: MyHomePage(
          // Le titre de la page d'acceuil ce titre peut varier selon les pages
          title: 'Flutter Demo Home Page'),
    );
  }
}

// Une classe qui herite d'un StateFulWidget est dont les données peuvent etre modifier au cours de l'application
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

// Quand on créer une page dynamique on doit avoir un Etat et l'interieur de la page est gerer dans les etats (Les states)
// On creer alors un Etat pour notre page D'acceuil
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// On creer la classe representant l'Etat de notre page D'acceuil et cette classe aura une visibilité en privé
class _MyHomePageState extends State<MyHomePage> {
  // Une variable privée
  int _counter = 0;
// Une methode à l'interieur de l'Etat, pour modifier une variable d'Etat elle doit faire appel à la fonction setState() dans laquel on a le droit maintenant de modifier une variable de state
// Le but de cette fonction est d'incrementer la variable _counter
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

// La methode build ici nous aide à savoir comment est-ce que on va construire cette page d'acceuil
  @override
  Widget build(BuildContext context) {
    // Le scaffold est un peu considerer comme l'arbre HTML, un scaffold est une page
    // Ici on demande la page elle est composer de quoi ?
    return Scaffold(
      // appBar est un peu considerer comme Navbar
      appBar: AppBar(
        // Le titre  à mettre dans la navbar widget.title fait reference à la variable title de MyHomePage
        title: Text(widget.title),
      ),
      // Le corps de notre application comme la partie main
      // Dans notre cas on dit que le body est entrer
      body: Center(
        // Le body prend un seul enfant qui est une colonne à fin d'afficher tous les elements les uns en dessous des autres
        child: Column(
          // Permet de positionner tous ce qui se trouve à l'interieur de la colonne, dans notre cas MainAxisAlignment vient de centrer tous ce qui se trouve à l'interieur de la colonne
          mainAxisAlignment: MainAxisAlignment.center,
          // Apres avoir positionner ma colonne Ici on demande qu'est-ce qui va y avoir à l'interieur de ma colonne ?
          // Et donc on va lui filer une liste des classes, une liste des Widget donc
          children: <Widget>[
            // Un widget de type de texte qui represente un texte à afficher
            Text(
              'You have pushed the button this many times:',
            ),
            // Une autre classe Widget qui lui va afficher la valeur de la variable _counter avec un style particulier
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // Un boutton flottant avec une classe FloatingActionButton qui lui permet de lui donner une fonction lui permettant d'incrementer le compter
      floatingActionButton: FloatingActionButton(
        // Quand on presse sur le boutton flottant on execute La fonction pour _incrementCounter qui est declarer dans _MyHomePageState
        onPressed: _incrementCounter,
        // Quand on passe sur le boutton on affiche le texte 'Increment' dans une bulle
        tooltip: 'Increment',
        // Ce boutton aura comme enfant une Icon de type 'Ajout'
        child: Icon(Icons.add),
      ),
    );
  }
}
