// On importe tous les outils de dart
import 'package:flutter/material.dart';

void main() {
  // la porte d'entrer de mon application
  runApp(MyApp());
}

// Represente notre application
class MyApp extends StatelessWidget {
  // On construit notre appli, en definissant ses elements principaux
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Flutter',
      debugShowCheckedModeBanner: false,
      // Le theme de notre appli
      theme: ThemeData(
        // La couleur de mon appli
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'My Flutter App'),
    );
  }
}

// Represente notre page d'acceuil
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
// Le titre de la page
  final String title;
// On créer notre etat
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// On definit l'Etat de notre page D'acceuil donc de notre appli
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
// On incremente le _counter
  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter -= 2;
    });
  }

// On dit comment on va construire notre page d'acceuil
  @override
  Widget build(BuildContext context) {
    // Notre page
    return Scaffold(
      // Le navbar de la page
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // Le corps de la page centrer
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // Liste des widget dans le corps de la page
          children: <Widget>[
            Text(
              'Vous avez appuyer sur le bouton plusieurs fois:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // Le bouton flottant
      floatingActionButton: FloatingActionButton(
        // L'action quand on appui sur le bouton
        onPressed: _incrementCounter,
        // La bulle d'infos quand on passe sur le bouton
        tooltip: 'Ajouter',
        // L'icon sur le bouton
        child: Icon(Icons.add),
      ),
    );
  }
}
