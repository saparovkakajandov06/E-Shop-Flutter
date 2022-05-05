import 'package:flutter/material.dart';
import 'package:turkmen/main.dart';
import 'package:turkmen/pages/cart.dart';


class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
     title: InkWell(
       onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>  new HomePageApp())
         );
       },
            child: Text(
         widget.product_detail_name,
       ),
     ),
     centerTitle: true,
     backgroundColor: Colors.green[600],
     actions: <Widget>[
       new IconButton(
         icon: Icon(Icons.search,
         color: Colors.white,
         ),
         onPressed: (){},
       ),

       new IconButton(
         icon: Icon(Icons.shopping_cart,
         color: Colors.white,),
         onPressed: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
         },
       ),
       
     ],
      ),
    body: new ListView(
      children: <Widget>[
        new Container(
          height: 300.0,
          child: GridTile(
            child: Container(
              color: Colors.white70,
              child: Image.asset(
                widget.product_detail_picture
                ),
            ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                // title: new Text(
                //   widget.product_detail_name,
                //   style: TextStyle(
                //     fontSize: 28.0,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.green[800],
                //   ),
                // ),
                leading: new Text(
                  widget.product_detail_name,
                  style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                      "${widget.product_detail_old_price} TMT",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    ),

                    Expanded(
                      child: new Text(
                      "${widget.product_detail_new_price} TMT",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[600],
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
            ),
        ),


        Row(
          children: <Widget>[
            //  ==============Olceg button============
            Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                      return new AlertDialog(
                        title: new Text(
                          "Ölçeg",
                        ),
                        content: new Text(
                          "Ölçegiňizi saýlaň"
                        ),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text(
                            "Ýap",
                          ),
                          ),
                        ],
                      );
                  });
                },
                color: Colors.white,
                textColor: Colors.green[600],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Ölçegi: "
                      ),
                      ),

                      Expanded(
                      child: new Icon(
                        Icons.arrow_drop_down,
                        color: Colors.green[600],
                        ),
                      ),
                  ],
                ),
                ),
              ),

  //  ==============Olceg button============

              Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                      return new AlertDialog(
                        title: new Text(
                          "Reňk",
                        ),
                        content: new Text(
                          "Reňk saýlaň"
                        ),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text(
                            "Ýap",
                          ),
                          ),
                        ],
                      );
                  });
                },
                color: Colors.white,
                textColor: Colors.green[600],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Reňki: "
                      ),
                      ),

                      Expanded(
                      child: new Icon(
                        Icons.arrow_drop_down,
                        color: Colors.green[600],
                        ),
                      ),
                  ],
                ),
                ),
              ),

              //  ==============Olceg button============

              Expanded(
              child: MaterialButton(
                onPressed: (){
                  showDialog(context: context,
                  builder: (context){
                      return new AlertDialog(
                        title: new Text(
                          "Baha",
                        ),
                        content: new Text(
                          "Baha saýlaň"
                        ),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text(
                            "Ýap",
                          ),
                          ),
                        ],
                      );
                  });
                },
                color: Colors.white,
                textColor: Colors.green[600],
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(
                        "Baha: "
                      ),
                      ),

                      Expanded(
                      child: new Icon(
                        Icons.arrow_drop_down,
                        color: Colors.green[600],
                        ),
                      ),
                  ],
                ),
                ),
              ),
          ],
        ),

        Row(
          children: <Widget>[
            //  ==============Olceg button============
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                color: Colors.green,
                textColor: Colors.white,
                child: new Text(
                  "Sebede goş",
                ),
                ),
              ),
               new IconButton(
                 icon: Icon(
                   Icons.add_shopping_cart,
                   color: Colors.red[600],
                 ),
                 onPressed: (){},
                 ),
                 
                new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red[600],
                    ),
                  onPressed: (){},
                ),
          ],
        ),
        Divider(),
        ListTile(
            title: new Text(
              "Önümiň düzümi:",
              style: TextStyle(
                color: Colors.green[800],
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            subtitle: new Text(
              "DoS (abb. Iňlis dilinden ýüz öwürmek ) - şowsuzlyga uçramak maksady bilen hasaplaýyş ulgamyna haker hüjümi, ýagny ulgamyň ak ýürekli ulanyjylarynyň üpjün edilen ulgam çeşmelerine (serwerlerine) girip bilmejek şertleri döretmek ýa-da bu giriş kyn bolmagyny ýüze çykarmakdyr.  ulgamynyň şowsuzlygy ulgamy özleşdirmek üçin bir ädim hem bolup biler (eger adatdan daşary ýagdaýlarda programma üpjünçiligi islendik möhüm maglumatlary berse - mysal üçin wersiýa, programma kodunyň bir bölegi we ş.m.).Ýöne köplenç ykdysady basyş çäresi: girdeji getirýän ýönekeý."
            ),
        ),
        
        new Row(
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text(
              "Önümiň ady:",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.lightGreen,
                ),
            ),
            ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: new Text(
                widget.product_detail_name,
              ),
            ),
          ],
        ),

        new Row(
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text(
              "Önümiň brendi:",
              style: TextStyle(
                fontSize: 15.5,
                color: Colors.lightGreen,
                ),
            ),
            ),
             Padding(
              padding: EdgeInsets.all(5.0),
              child: new Text(
                "Brand X",
              ),
            ),
          ],
        ),

        new Row(
          children: <Widget>[
            Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text(
              "Önümiň mazmuny:",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.lightGreen,
                ),
            ),
            ),
             Padding(
              padding: EdgeInsets.all(5.0),
              child: new Text(
                "Täze",
              ),
            ),
          ],
        ),
        //Similar Products Section

        Divider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
          child: new Text(
            "Brend Harytlar",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w800,
                color: Colors.brown[800],
              ),
          ),
          ),

        Container(
          height: 340.0,
          child: Similar_products(),
        ),
      ],
    ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
 var product_list = [
    {
      "name": "Smetana",
      "picture": "assets/images/smetana.jpg",
      "old_price": 9,
      "price": 8,
    },
     {
      "name": "Dorog",
      "picture": "assets/images/tworog.jpg",
      "old_price": 12,
      "price": 10,
    },
    {
      "name": "Ýubileýni",
      "picture": "assets/images/yubileyni.JPG",
      "old_price": 13,
      "price": 10,
    },
    {
      "name": "Nuts",
      "picture": "assets/images/nuts.jpg",
      "old_price": 14,
      "price": 13,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Similar_single_prod(
          prod_name: product_list[index]['name'],
          prod_picture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

@override
Widget build(BuildContext context) {
  return Card(
    child: Hero(
      tag: prod_name,
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
              // child: ListTile(
              //   leading: Text(prod_name,
              //   style: TextStyle(
              //     fontWeight: FontWeight.bold,
              //   ),
              //   ),
              //   title: Text("$prod_price TMT",
              //   style: TextStyle(color: Colors.green[800],
              //   fontWeight: FontWeight.bold),
              //   ),
              //   subtitle: Text("$prod_old_price TMT",
              //   style: TextStyle(color: Colors.black54,
              //   decoration: TextDecoration.lineThrough
              //   ),
              //   ),
              // ),
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
            child: Image.asset(prod_picture,
            fit: BoxFit.cover,),
            ),
        ),
    )),
  );
}
}