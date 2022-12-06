import 'package:flutter/material.dart';
import 'package:mouse/common/catgory/vehicle_cat/cat_vehicle_buy/vehicle_for_office/car_cargo.dart';
import 'package:mouse/common/catgory/vehicle_cat/cat_vehicle_buy/vehicle_for_office/car_min.dart';
import 'package:mouse/common/catgory/vehicle_cat/cat_vehicle_buy/vehicle_for_office/car_bus.dart';
import 'package:mouse/common/catgory/vehicle_cat/cat_vehicle_buy/vehicle_for_office/car_others.dart';
import 'package:mouse/main.dart';


class cat_car_office extends StatefulWidget {
  const cat_car_office({super.key});

  @override
  State<cat_car_office> createState() => _cat_car_officeState();
}

class _cat_car_officeState extends State<cat_car_office> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    Text(
      "Cargoooo",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Min",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "bus",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "others",
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
                          ' car categorys',
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
                   car_cargo(),
                   car_min(),
                   car_bus(), 
                   car_others(),
                   car_others()
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
