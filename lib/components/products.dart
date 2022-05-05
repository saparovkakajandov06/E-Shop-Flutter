import 'package:flutter/material.dart';
import 'package:turkmen/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Banan",
      "picture": "assets/images/banan.png",
      "old_price": 10,
      "price": 9,
    },
     {
      "name": "Apelsin",
      "picture": "assets/images/apelsin.jpg",
      "old_price": 12,
      "price": 10,
    },
    {
      "name": "Koko-Kola",
      "picture": "assets/images/coco.png",
      "old_price": 15,
      "price": 12,
    },
    {
      "name": "Aýran",
      "picture": "assets/images/ayran.JPG",
      "old_price": 8,
      "price": 7,
    },

{
      "name": "Üwelen et",
      "picture": "assets/images/farsaas.JPG",
      "old_price": 45,
      "price": 43,
    },

    {
      "name": "Alpen Gold",
      "picture": "assets/images/alpengold.jpg",
      "old_price": 16,
      "price": 15,
    },

     {
      "name": "Nurana Aş",
      "picture": "assets/images/as.jpg",
      "old_price": 12,
      "price": 10,
    },

    {
      "name": "Bugdaý uny",
      "picture": "assets/images/bugday.jpg",
      "old_price": 16,
      "price": 14,
    },
    {
      "name": "Ülker",
      "picture": "assets/images/ulker.jpg",
      "old_price": 14,
      "price": 12,
    },

    {
      "name": "Eçil sok",
      "picture": "assets/images/ecil.jpg",
      "old_price": 10,
      "price": 9,
    },

      {
      "name": "Erik kak",
      "picture": "assets/images/erikkak.jpg",
      "old_price": 48,
      "price": 46,
    },

    {
      "name": "Garylan maňyz",
      "picture": "assets/images/garyndyly.jpg",
      "old_price": 50,
      "price": 48,
    },

    {
      "name": "Goroh",
      "picture": "assets/images/goroh.jpg",
      "old_price": 17,
      "price": 14,
    },

      {
      "name": "Greçka",
      "picture": "assets/images/gre.jpg",
      "old_price": 22,
      "price": 19,
    },

    {
      "name": "Hasar köke",
      "picture": "assets/images/hasar.JPG",
      "old_price": 18,
      "price": 16,
    },

    {
      "name": "Içäý çaý",
      "picture": "assets/images/icay.jpg",
      "old_price": 11,
      "price": 10,
    },

    {
      "name": "Joş sok",
      "picture": "assets/images/jos.JPG",
      "old_price": 12,
      "price": 11,
    },

    {
      "name": "Köke",
      "picture": "assets/images/koke1.jpg",
      "old_price": 14,
      "price": 13,
    },

    {
      "name": "Kolbasa",
      "picture": "assets/images/kolb111.JPG",
      "old_price": 25,
      "price": 23,
    },

    {
      "name": "Lawaş",
      "picture": "assets/images/lavas.png",
      "old_price": 15,
      "price": 13,
    },

    {
      "name": "Mars",
      "picture": "assets/images/mars1.jpg",
      "old_price": 10,
      "price": 9,
    },

    {
      "name": "Mäş",
      "picture": "assets/images/mas.jpg",
      "old_price": 15,
      "price": 13,
    },

    {
      "name": "Milky Way",
      "picture": "assets/images/milkyway.JPG",
      "old_price": 18,
      "price": 14,
    },

     {
      "name": "Moloko",
      "picture": "assets/images/molokokokok.JPG",
      "old_price": 19,
      "price": 16,
    },

     {
      "name": "Şeker",
      "picture": "assets/images/sahar.jpg",
      "old_price": 15,
      "price": 13,
    },

    {
      "name": "Snikers",
      "picture": "assets/images/snikers.JPG",
      "old_price": 15,
      "price": 13,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

@override
Widget build(BuildContext context) {
  return Card(
    child: Hero(
      tag: new Text("hero 1"),
       child: Material(
        child: InkWell(
        onTap: ()=> Navigator.of(context).push(
          new MaterialPageRoute(
            //ssylka boyunca harydyn maglumatlaryny tutyas
            builder: (context) => new ProductDetails(
            product_detail_name: prod_name,
            product_detail_new_price: prod_price,
            product_detail_old_price: prod_old_price,
            product_detail_picture: prod_picture,
          )),
          ),
          child: GridTile(
            footer: Container(
              color: Colors.white70,
            
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      prod_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.brown[800],
                      ),
                      ),
                      ),
                      new Text("${prod_price} TMT",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                ],
              ),
            ),
            child: Image.asset(
              prod_picture,
            fit: BoxFit.cover,
            ),
            ),
        ),
    ),
    ),
  );

}
}