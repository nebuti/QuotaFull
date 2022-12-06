import 'package:flutter/material.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/compact_cat/chevrolet.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/compact_cat/ford.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/compact_cat/honda.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/compact_cat/kides.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/compact_cat/mazda3.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/compact_cat/toyota.dart';

import 'package:mouse/main.dart';

class cat_home extends StatefulWidget {
  const cat_home({super.key});

  @override
  State<cat_home> createState() => _cat_homeState();
}

class _cat_homeState extends State<cat_home> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    Text(
      "Chevrolet",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Ford",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
     
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Honda",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Mazda3",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Toyota",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Related",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
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
                          ' Cmpacttttt category',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),

                // tab bar
                TabBar(isScrollable: true, tabs: myTabs),

                // tab bar view
                Expanded(
                  child: TabBarView(
                    children: [
                      Chevrolet_comp(
                        isFav: false,
                      ),
                      Ford_comp(
                        isFav: false,
                      ),
                      Honda_comp(isFav: false),
                      Mazda3_comp(isFav: false),
                      Toyota_comp(
                        isFav: false,
                      ),
                      Kides_comp(isFav: false)
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
