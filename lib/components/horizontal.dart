import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/soft-drinks.png',
            image_caption: 'Içgiler',
          ),

           Category(
            image_location: 'assets/images/koke.JPG',
            image_caption: 'Konditer önümleri',
          ),

           Category(
            image_location: 'assets/images/manyzlar.jpg',
            image_caption: 'Gury ir-iýmişler',
          ),

          Category(
            image_location: 'assets/images/uwelen.JPG',
            image_caption: 'Et we et önümleri',
          ),

          Category(
                      image_location: 'assets/images/mars_sho.jpg',
                      image_caption: 'Süýji we şokoladlar',
                    ),

Category(
          image_location: 'assets/images/ayyy.JPG',
          image_caption: 'Süýt we süýt önümleri',
            ),

            Category(
          image_location: 'assets/images/plom.JPG',
          image_caption: 'Doňdurmalar',
            ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption,
  });

  @override
  Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 180.0,
         child: ListTile(
          title: Image.asset(
          image_location,
          width: 100.0,
          height: 80.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption,
            style: new TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w900,
            ),
            ),
          ),
        ),
      ),
    ),
  );
  }
}