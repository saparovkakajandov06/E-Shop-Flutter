import 'package:flutter/material.dart';

class Vendedores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text("Yalnys sahypa"),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
              "Yalnys",
          ),
          RaisedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/LoginPage');
          },
          child: Text("Yza gec"),
          ),
        ],
      ),
    );
  }
}