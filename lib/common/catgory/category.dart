// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mouse/sign.dart';
import 'package:mouse/common/catgory/houselist/home_page.dart';

import '../car/car_detaile.dart';

class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

List<String> images = [
  'assets/images/cs1.png',
  'assets/images/cs2.png',
  'assets/images/cs3.png',   
];

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: slide(),
          ),
          Text(
            'Sell House Category  ',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 14, 13, 13)),
          ),
          PopularcarTitle(),
          Expanded(
              child: PopularhouseItems(),
        
          ),
          Text(
            'Sell Car Category  ',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 14, 13, 13)),
          ),
          PopularhouseTitle(),
          Expanded(
              child: PopularcarItems(),
          ),
        ],
      ),
    ));
  }
}

class slide extends StatefulWidget {
  @override
  _slideState createState() => _slideState();
}

class _slideState extends State<slide> {
  @override
  @override
  int currentIndex = 0;
  final PageController controller = PageController();
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 50,
        width: double.infinity,
        child: PageView.builder(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              currentIndex = index % images.length;
            });
          },
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: Image.network(
                  images[index % images.length],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 0; i < images.length; i++)
            buildIndicator(currentIndex == i)
        ],
      ),
    ]);
  }
}

class catego extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 230, 9),
          title: Container(
            child: Column(),
          )),
      body: category(),
    );
  }
}

class PopularcarTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  PopularcarTiles(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price,
      required this.slug})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return type();
          }),
        );
      },
        child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),
            ]),
            child: Card(
                color: Color.fromARGB(255, 104, 209, 127),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
             child: Container( 

                         width: 160,

                         height: 150, 

             child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Container(
                          //     alignment: Alignment.topRight,
                          //     width: double.infinity,
                          //     padding: EdgeInsets.only(right: 5, top: 5),
                          //     // child: Container(
                          //     //   height: 28,
                          //     //   width: 28,
                          //     //   decoration: BoxDecoration(
                          //     //       shape: BoxShape.circle,
                          //     //       color: Color.fromARGB(253, 121, 118, 118),
                          //     //       // ignore: prefer_const_literals_to_create_immutables
                          //     //       boxShadow: [
                          //     //         BoxShadow(
                          //     //           color: Color.fromARGB(255, 213, 241, 148),
                          //     //           blurRadius: 25.0,
                          //     //           offset: Offset(0.0, 0.75),
                          //     //         ),
                          //     //       ]),
                          //     //   // child: Icon(
                          //     //   //   Icons.favorite,
                          //     //   //   color: Color.fromARGB(255, 8, 8, 8),
                          //     //   //   size: 16,
                          //     //   // ),
                          //     // ),
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              // ignore: prefer_interpolation_to_compose_strings
                              'assets/images/' + imageUrl + ".png",
                              width: 160,
                              height: 100,
                              fit: BoxFit.cover,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 3, 3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(179, 144, 156, 146),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              child: Icon(
                                Icons.near_me,
                                color: Color.fromARGB(255, 13, 14, 13),
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 12, 12, 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 10, 10, 10),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 13, 14, 13),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 22, 22, 22),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 206, 206, 207),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("($numberOfRating)",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('\birr' + price,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 2, 2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularcarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            "Popluar car",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 36, 61, 21),
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularcarItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularcarTiles(
            name: "Fried Egg",
            imageUrl: "c7",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularcarTiles(
            name: "Mixed Vegetable",
            imageUrl: "c2",
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            slug: ""),
        PopularcarTiles(
            name: "Salad With Chicken",
            imageUrl: "c3",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
        PopularcarTiles(
            name: "Mixed Salad",
            imageUrl: "c4",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularcarTiles(
            name: "Red meat,Salad",
            imageUrl: "c5",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        PopularcarTiles(
            name: "Mixed Salad",
            imageUrl: "c6",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularcarTiles(
            name: "Potato,Meat fry",
            imageUrl: "c8",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        PopularcarTiles(
            name: "Fried Egg",
            imageUrl: "c11",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularcarTiles(
            name: "Red meat,Salad",
            imageUrl: "c10",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
      ],
    );
  }
}

class PopularhouseTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;

  PopularhouseTiles(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price,
      required this.slug})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
     return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return type();
          }),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),
            ]),
            child: Card(
                color: Color.fromARGB(255, 104, 209, 127),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 160,
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Container(
                          //     alignment: Alignment.topRight,
                          //     width: double.infinity,
                          //     padding: EdgeInsets.only(right: 5, top: 5),
                          //     // child: Container(
                          //     //   height: 28,
                          //     //   width: 28,
                          //     //   decoration: BoxDecoration(
                          //     //       shape: BoxShape.circle,
                          //     //       color: Color.fromARGB(253, 121, 118, 118),
                          //     //       // ignore: prefer_const_literals_to_create_immutables
                          //     //       boxShadow: [
                          //     //         BoxShadow(
                          //     //           color: Color.fromARGB(255, 213, 241, 148),
                          //     //           blurRadius: 25.0,
                          //     //           offset: Offset(0.0, 0.75),
                          //     //         ),
                          //     //       ]),
                          //     //   // child: Icon(
                          //     //   //   Icons.favorite,
                          //     //   //   color: Color.fromARGB(255, 8, 8, 8),
                          //     //   //   size: 16,
                          //     //   // ),
                          //     // ),
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              // ignore: prefer_interpolation_to_compose_strings
                              'assets/images/' + imageUrl + ".png",
                              width: 160,
                              height: 100,
                              fit: BoxFit.cover,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 3, 3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(179, 144, 156, 146),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              child: Icon(
                                Icons.near_me,
                                color: Color.fromARGB(255, 13, 14, 13),
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 12, 12, 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 10, 10, 10),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 13, 14, 13),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 22, 22, 22),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 206, 206, 207),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("($numberOfRating)",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('\birr' + price,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 2, 2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularhouseTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            "Popluar place",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 36, 61, 21),
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularhouseItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularhouseTiles(
            name: "Fried Egg",
            imageUrl: "h1",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularhouseTiles(
            name: "Mixed Vegetable",
            imageUrl: "h12",
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            slug: ""),
        PopularhouseTiles(
            name: "Salad With Chicken",
            imageUrl: "h10",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
        PopularhouseTiles(
            name: "Mixed Salad",
            imageUrl: "h7",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularhouseTiles(
            name: "Red meat,Salad",
            imageUrl: "h6",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        PopularhouseTiles(
            name: "Mixed Salad",
            imageUrl: "h11",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularhouseTiles(
            name: "Potato,Meat fry",
            imageUrl: "h7",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        PopularhouseTiles(
            name: "Fried Egg",
            imageUrl: "h8",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularhouseTiles(
            name: "Red meat,Salad",
            imageUrl: "h9",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
      ],
    );
  }
}
