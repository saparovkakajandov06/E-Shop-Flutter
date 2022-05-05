import 'package:flutter/material.dart';

class Power extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: Text("Gecdiniz ustunlik"),
      ),
      body: new Column(
        children: <Widget>[
          new Text(
              "Dogry",
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