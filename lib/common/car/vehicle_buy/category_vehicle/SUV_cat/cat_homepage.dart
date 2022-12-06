import 'package:flutter/material.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/Sedan_cat/BMW.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/Sedan_cat/Executive.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/Sedan_cat/Hyundai.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/Sedan_cat/Yaris.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/Sedan_cat/luxury.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/Sedan_cat/others.dart';

import 'package:mouse/main.dart';


class SUV_home extends StatefulWidget {
  const SUV_home({super.key});

  @override
  State<SUV_home> createState() => _SUV_homeState();
}

class _SUV_homeState extends State<SUV_home> {
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
                          ' Cmpact category',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),

                // tab bar
                TabBar(isScrollable: true,tabs: myTabs),

                // tab bar view
                Expanded(
                  child: TabBarView(
                    children: [
                      BMW_sed(),
                  Executive_sed(),
                  Hyundai_sed(),
                  Luxury_sed(),
                  Yaris_sed(),
                  other_sed(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
