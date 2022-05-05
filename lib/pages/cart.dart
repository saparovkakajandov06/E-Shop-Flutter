import 'package:flutter/material.dart';
import 'package:turkmen/main.dart';


class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
         "Sebet",
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

      //  new IconButton(
      //    icon: Icon(
      //      Icons.shopping_cart,
      //    color: Colors.white,
      //    ),
      //    onPressed: (){},
      //  ),
       
     ],
      ),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text(
                  "Jemi:",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[800],
                  ),
                ),
                subtitle: new Text(
                  "150 TMT",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.brown[600],
                    fontWeight: FontWeight.w700,
                    ),
                ),
              ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.green[600],
                  child: new Text(
                    "Sargyt et",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                ),
          ],
        ),
        ),
    );
  }
}