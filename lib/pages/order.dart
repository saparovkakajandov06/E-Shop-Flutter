import 'package:flutter/material.dart';
import 'package:turkmen/pages/cart.dart';
import 'package:turkmen/main.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
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
         "Meniň sargytlarym",
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
    );
  }
}