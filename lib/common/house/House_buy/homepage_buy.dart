

import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mouse/Home_Sc.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/dropdown_In.dart';
import 'package:mouse/common/house/House_buy/House_Out_A.A/dropdown_Out.dart';


import 'package:mouse/grid_search.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:mouse/main.dart';
import 'package:mouse/sign.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';



class homepage_buy extends StatefulWidget {
  @override
  _homepage_buyState createState() => _homepage_buyState();
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => GridSearchScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

class _homepage_buyState extends State<homepage_buy> {
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

  @override
  Widget build(BuildContext context) {
    final shape = StadiumBorder();
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
            backgroundColor: Color.fromARGB(255, 79, 230, 9),
            title: Container(
              child: Column(),
            )),
        body: Column(children: [
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 207, 238, 148),
                Color.fromARGB(255, 133, 238, 85)
              ])),
              // color: Color.fromARGB(193, 135, 238, 135),
              padding: const EdgeInsets.only(top: 58.0, right: 10, left: 10),
              child: Column(children: [
                Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Column(
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                 primary: Color.fromARGB(0, 248, 242, 242),
                                      shadowColor: Colors.transparent,
                                shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(100.0),
                                ),
                              ),
                              icon: Icon(
                                Icons.search_rounded,
                                size: 20.0,
                              ), //icon data for elevated button
                              label: Text(
                                "search cars ....",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 248, 248, 248)),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            GridSearchScreen()));
                                //After successful login we will redirect to profile page. Let's create profile page now
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "wellcome to car station",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 96, 231, 129),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/broker.png",
                      // height: 200,
                      // width: 200,
                  height: MediaQuery.of(context).size.height*0.3,
                  width: MediaQuery.of(context).size.width*0.5
                    ),
                  ),
                ),
                Container(
                    child: Column(children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                     
                              child: Container(
                                height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.width*1,
                                    
                                decoration: ShapeDecoration(
                                    shape: shape,
                                    gradient: LinearGradient(colors: [
                                      Colors.orange,
                                      Colors.green,
                                      Color.fromARGB(255, 176, 185, 233),
                                    ])),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    elevation: 0,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  // style: ThemeHelper().buttonStyle(),
                                  child: Text(
                                    ' In Adiss Ababa',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 248, 248, 248)),
                                  ),
                                                        
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DropDown_In()));
                                    //After successful login we will redirect to profile page. Let's create profile page now
                                  },
                                ),
                              ),
                            ),
                            SizedBox( height: MediaQuery.of(context).size.height*0.06),
                            Container(
                                
                              child: Container(
                              height: MediaQuery.of(context).size.height*0.1,
                  width: MediaQuery.of(context).size.width*1,
                                decoration: ShapeDecoration(
                                    shape: shape,
                                    gradient: LinearGradient(colors: [
                                      Colors.orange,
                                      Colors.green,
                                      Color.fromARGB(255, 176, 185, 233),
                                    ])),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.transparent,
                                    shadowColor: Colors.transparent,
                                    elevation: 0,
                                    shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(20.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Near Addis Ababa ',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 248, 248, 248)),
                                  ),
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DropDown_out()));
                                    //After successful login we will redirect to profile page. Let's create profile page now
                                  },
                                ),
                              ),
                            ),
                           
                          ]))
                ]))
              ]))
        ]));
  }
}
                          // style: ThemeHelper().buttonStyle(),