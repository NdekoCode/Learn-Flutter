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
        body: Container(
            width: 150,
            height: 60,
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Text("Salut les mondes", textAlign: TextAlign.center),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
                color: Colors.yellow,
                shape: Border.all(color: Colors.white, width: 5) +
                    Border.all(color: Colors.red, width: 5))));
  }
}
