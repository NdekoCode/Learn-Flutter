import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _value = 1;
  void _incrementer() {
    setState(() {
      _value++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Row/Column")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Flutter en 2min",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
            Text("Row / Column",
                style: TextStyle(color: Colors.blue, fontSize: 30),
                textAlign: TextAlign.center),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Choix couleur"),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: Text("Rouge", style: TextStyle(color: Colors.white)),
                    onPressed: () {}),
                ElevatedButton(
                    child: Text("Blue", style: TextStyle(color: Colors.white)),
                    onPressed: () {}),
                ElevatedButton(
                  child: Text("Vert", style: TextStyle(color: Colors.white)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Choix du texte"),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                    child: Text("Normal",
                        style: TextStyle(fontWeight: FontWeight.normal)),
                    onPressed: () {}),
                ElevatedButton(
                    child: Text("Bold",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey)),
                    onPressed: () {}),
                ElevatedButton(
                  child: Text("Italic",
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Suivant"),
                IconButton(icon: Icon(Icons.navigate_next), onPressed: () {})
              ],
            )
          ],
        ));
  }
}
