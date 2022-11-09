import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mouse/Home_Sc.dart';
import 'package:mouse/grid_search.dart';


class sellCar extends StatefulWidget {
  @override
  _sellCarState createState() => _sellCarState();
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

class _sellCarState extends State<sellCar> {
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
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 79, 230, 9),
            title: Container(
              child: Column(),
            )),



        body: ListView(children: [
          Container(
              color: Color.fromARGB(193, 135, 238, 135),
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
                SizedBox(height:40),
              Text(
                      "wellcome to car station",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    SizedBox(height: 30,),
                  
                Container(
                  // Border width
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 96, 231, 129),
                      shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/broker.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(height:30),

                Container(
                    child: Column(children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                          // style: ThemeHelper().buttonStyle(),

                          child: Text(
                            'Car For Work  ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 248, 248, 248)),
                          ),

                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => workCar()));
                            //After successful login we will redirect to profile page. Let's create profile page now
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                          // style: ThemeHelper().buttonStyle(),

                          child: Text(
                            'Car For Home  ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 248, 248, 248)),
                          ),

                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homeCar()));
                            //After successful login we will redirect to profile page. Let's create profile page now
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          ),
                          // style: ThemeHelper().buttonStyle(),

                          child: Text(
                            'Car For office  ',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 248, 248, 248)),
                          ),

                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => officeCar()));
                            //After successful login we will redirect to profile page. Let's create profile page now
                          },
                        ),
                      ]))
                ]))
              ]))
        ]));
  }
}

class workCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 230, 9), title: Container()),
      body: ListView(
        children: [Container()],
      ),
    );
  }
}

class homeCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 230, 9), title: Container()),
      body: ListView(
        children: [Container()],
      ),
    );
  }
}

class officeCar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 230, 9), title: Container()),
      body: ListView(
        children: [Container()],
      ),
    
    
    );
  }
}
