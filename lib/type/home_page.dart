import 'package:flutter/material.dart';
import 'package:mouse/main.dart';
import 'package:mouse/type/house/houselist/house_land.dart';
import 'package:mouse/type/house/houselist/house_large.dart';
import 'package:mouse/type/house/houselist/house_low.dart';
import 'package:mouse/type/house/houselist/house_mid.dart';
import 'package:mouse/type/util/my_tab.dart';

import '../category.dart';
import 'house/houselist/house_all.dart';

class type extends StatefulWidget {
  const type({super.key});

  @override
  State<type> createState() => _typeState();
}

class _typeState extends State<type> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    Text(
      "All",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "large",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Mid",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Small",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Place",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 57, 247, 9),
            leading: IconButton(
                color: Color.fromARGB(255, 10, 10, 10),
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
          ),
          backgroundColor: Color.fromARGB(0, 66, 246, 16),
          //   // elevation: 0,
          //   // leading: Padding(
          //   //   padding: const EdgeInsets.only(left: 24.0),

          // ),
          body: Container(
            color: Color.fromARGB(255, 164, 232, 115),
            child: Column(
              children: [
                // i want to eat
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36.0, vertical: 18),
                    child: Row(
                      children: [
                        Text(
                          ' house categorys',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),

                // tab bar
                TabBar(tabs: myTabs),

                // tab bar view
                Expanded(
                  child: TabBarView(
                    children: [
                      house_all(),
                      house_large(),
                      house_mid(),
                      house_low(),
                      house_land()
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
