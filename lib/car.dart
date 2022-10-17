import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:mouse/grid_search.dart';

class car extends StatefulWidget {
  @override
  _carState createState() => _carState();
}

class _carState extends State<car> {
  List<String> foodList = [
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
  List<String>? foodListSearch;
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
        body: Container(
      padding: const EdgeInsets.only(top: 58.0, right: 10, left: 10),
      child: Column(children: [
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
          ),

          icon: Icon(
            Icons.search_rounded,
            size: 30.0,
          ), //icon data for elevated button
          label: Text("6778"),
          onPressed: () {
            //After successful login we will redirect to profile page. Let's create profile page now
            Navigator.of(context).push(_createRoute());
          },
        ),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
            ),

            icon: Icon(
              Icons.search_rounded,
              size: 30.0,
            ), //icon data for elevated button
            label: Text("6778"),
            onPressed: () {
              //After successful login we will redirect to profile page. Let's create profile page now
              Navigator.of(context).push(_createRoute());
            },
          ),
          SizedBox(
            width: 140,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
            ),
            // style: ThemeHelper().buttonStyle(),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'Register',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 248, 248, 248)),
              ),
            ),
            onPressed: () {
              //After successful login we will redirect to profile page. Let's create profile page now
            },
          ),
        ]),
      ]),
    ));
  }
}
