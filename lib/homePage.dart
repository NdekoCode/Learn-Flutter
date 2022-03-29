import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nbrVues = 315;
    var date = DateTime.now();
    return Scaffold(
        body: Center(
            child: Container(
                height: 100,
                child: Text("Hello World: $nbrVues à ${date.hour}H",
                    style: TextStyle(
                        fontFamily: 'SF UI Display',
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red,
                        letterSpacing: 3,
                        wordSpacing: 10,
                        shadows: [
                          Shadow(
                              color: Colors.redAccent,
                              offset: Offset(5.0, 5.0),
                              blurRadius: 10.0)
                        ]),
                    textAlign: TextAlign.center))));
  }
}
