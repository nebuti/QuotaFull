import 'package:flutter/material.dart';

import '../../house/buyHouse.dart';
import '../car_detaile.dart';

class car_cargo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      
      HorizontalList(),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            alignment: Alignment.centerLeft,
            // ignore: prefer_const_constructors
            child: Text('Recent products')),
      ),

      Flexible(child: Products()),
    ]);
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'assets/images/c19.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/c14.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/c21.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/c20.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/c12.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/c11.png',
            image_caption: 'shirt',
          ),
          Category(
            image_location: 'assets/images/c1.png',
            image_caption: 'dress',
          ),
          Category(
            image_location: 'assets/images/c13.png',
            image_caption: 'pants',
          ),
          Category(
            image_location: 'assets/images/c17.png',
            image_caption: 'formal',
          ),
          Category(
            image_location: 'assets/images/c16.png',
            image_caption: 'formal',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({required this.image_location, required this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 40.0,
                height: 40.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: TextStyle(fontSize: 12.0),
                ),
              )),
        ),
      ),
    );
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": 'assets/images/c22.png',
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": 'assets/images/c2.png',
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": 'assets/images/c12.png',
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": 'assets/images/c12.png',
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": 'assets/images/c6.png',
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "toyota",
      "picture": 'assets/images/c7.png',
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "sedan",
      "picture": 'assets/images/c16.png',
      "old_price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
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
              onTap: () {},
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\Birr$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\Birr$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
