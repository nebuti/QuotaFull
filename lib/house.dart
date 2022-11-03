// ignore_for_file: prefer_const_constructors

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mouse/grid_search.dart';
import 'package:mouse/buyCar.dart';
import 'package:mouse/carRent.dart';
import 'package:mouse/sellHouse.dart';

class house extends StatefulWidget {
  @override
  _houseState createState() => _houseState();
}

class _houseState extends State<house> {
  List<String> carList = [
    'Orange',
    'Berries',
    'Lemons',
    'Apples',
    'Mangoes',
    'Dates',
    'Avocados',
    'Black Beans',
    'Chickpeas',
    'Pinto beans',
    'White Beans',
    'Green lentils',
    'Split Peas',
    'Rice',
    'Oats',
    'Quinoa',
    'Pasta',
    'Sparkling water',
    'Coconut water',
    'Herbal tea',
    'Kombucha',
    'Almonds',
    'Peannuts',
    'Chia seeds',
    'Flax seeds',
    'Canned tomatoes',
    'Olive oil',
    'Broccoli',
    'Onions',
    'Garlic',
    'Carots',
    'Leafy greens',
    'Meat',
  ];
  final List<String> imagelist = [
    'assets/images/c4.png',
    'assets/images/h20.png',
    'assets/images/h5.png',
  ];
  List<String>? carListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          GridSearchScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
          child: Column(
          children: [
              Container(
                  color: Color.fromARGB(255, 163, 213, 214),
                  child: Column(children: [
                    // ignore: prefer_const_constructors
                    Text(
                      "wellcome to house station",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
              Container(
                height: 200,
                width: double.infinity,
                child:Image.asset(
                 "images/p2.gif",
                          fit: BoxFit.cover,      
                         
                            ),),

                      
                            
                  Container(
                      child: Column(
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),

                            icon: Icon(
                              Icons.search_rounded,
                              size: 30.0,
                            ), //icon data for elevated button
                            label: Text(
                              "search cars ....",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 248, 248, 248)),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(_createRoute());
                              //After successful login we will redirect to profile page. Let's create profile page now
                            },
                          ),
                        ],
                      ),
                    )
                  ])),
                  
              Container(
                  color: Color.fromARGB(195, 168, 245, 180),
                  height: 100,

                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),// style: ThemeHelper().buttonStyle(),

                          child: Text(
                            'Sell  ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 248, 248, 248)),
                          ),

                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => sellCar()));
                            //After successful login we will redirect to profile page. Let's create profile page now
                          },
                        ),
                       
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                          // style: ThemeHelper().buttonStyle(),

                          child: Text(
                            'Rent  ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 248, 248, 248)),
                          ),

                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => carRent()));
                            //After successful login we will redirect to profile page. Let's create profile page now
                          },
                        ),
                      ])),

              CarouselSlider(
                options: CarouselOptions(
                  height: 100.0,
                  viewportFraction: 0.98,
                  enlargeCenterPage: false,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    print(reason);
                    // print(CarouselPageChangedReason.controller);
                  },
                ),
                items: imagelist.map((i) {
                  return Builder(builder: (context) {
                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOutBack,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(i), fit: BoxFit.cover)),
                    );
                  });
                }).toList(),
              ),
        ])));
  }
}
