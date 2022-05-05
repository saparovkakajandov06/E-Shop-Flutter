import 'package:flutter/material.dart';
import 'package:turkmen/pages/cart.dart';
import 'package:turkmen/main.dart';
import 'package:turkmen/components/products.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
    elevation: 0.1,
     title: InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => new HomePageApp()));
       },
            child: Text(
         "Meniň Akkoundym",
       ),
     ),
     centerTitle: true,
     backgroundColor: Colors.green[600],
     actions: <Widget>[
       new IconButton(
        icon: Icon(
        Icons.search,
        color: Colors.white,
         ),
        onPressed: (){},
       ),

       new IconButton(
         icon: Icon(
           Icons.shopping_cart,
         color: Colors.white,
         ),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
         },
       ),
       
     ],
      ),
      body: Container(
        color: Colors.yellowAccent[800],
        height: 60.0,
        width: 80.0,
      ),
    );
  }
}