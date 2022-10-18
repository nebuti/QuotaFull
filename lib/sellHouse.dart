import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sellhouse extends StatefulWidget {
  @override
  _sellHouseState createState() => _sellHouseState();
}

class _sellHouseState extends State<sellhouse> {
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
            
              child: Column(
                ),

            )),
            
        body: ListView(
          children:[
              Container(
                // Border width
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 228, 219, 218),
                    shape: BoxShape.circle),
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/broker.png",
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
              Container(
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
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => workCar()));
                    //After successful login we will redirect to profile page. Let's create profile page now
                  },
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
                    
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => homeCar()));
                    //After successful login we will redirect to profile page. Let's create profile page now
                  },
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
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => officeCar()));
                    //After successful login we will redirect to profile page. Let's create profile page now
                  },
                ),
              ]))
            ]));
  }
}

class workCar extends StatelessWidget {

      @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'car for work',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
   
    );
  }
}


class homeCar extends StatelessWidget {

      @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car for home',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      
    );
  }
}
class officeCar extends StatelessWidget {

      @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car for office',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    
    );
  }
}