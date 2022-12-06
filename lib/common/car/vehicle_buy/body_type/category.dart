// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mouse/common/car/car.dart';
import 'package:mouse/sign.dart';


import 'SUV.dart';
import 'compact.dart';
import 'minbus.dart';
import 'moter.dart';
import 'pickup.dart';
import 'sedan.dart';
import 'truck.dart';
import 'wheeler.dart';



class body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 51, 255, 10),
            leading: IconButton(
              color: Color.fromARGB(255, 243, 243, 243),
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => car()));
                })),
        body: Container(
          child: body_list(),
        ));
  }
}


class body_list extends StatefulWidget {
  @override
  _body_listState createState() => _body_listState();
}

List<String> images = [
  'assets/images/cs1.png',
  'assets/images/cs2.png',
  'assets/images/cs3.png',
];

class _body_listState extends State<body_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // slide(),

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [  
                    Text(
                  'Compact Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                PopularCompactTitle(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularCompactItems(),
                ),       Text(
                  'Sedan Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                 PopularSedanTitle(),  
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularSedanItems(),
                ),       Text(
                  'SUV Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                   PopularSUVTitle(),  
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularSUVItems(),
                ),
                       Text(
                  'Truck Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                   PopularTruckTitle(),  
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularTruckItems(),
                ),       Text(
                  'Pickup Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                    PopularPickupTitle(),   
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularPickupItems(),
                ),       Text(
                  'MinBus Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                PopularMinbusTitle(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularMinbusItems(),
                ),
                       Text(
                  'Moter Vehicle Category  ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 14, 13, 13)),
                ),
                 PopularMoterTitle(),  
                 Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  child: PopularMoterItems(),
                ),
                  ]),
                )

                // PopularSUVTitle(),
                // Expanded(
                //   child: PopularSUVItems(),
                // ),
                // Text(
                //   'MinBus Vehicle Category  ',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 14, 13, 13)),
                // ),
                // PopularMinbusTitle(),
                // Expanded(
                //   child: PopularMinbusItems(),
                // ),
                // Text(
                //   'Sedan Vehicle Category  ',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 14, 13, 13)),
                // ),
                // PopularSedanTitle(),
                // Expanded(
                //   child: PopularSedanItems(),
                // ),
                // Text(
                //   'PickUp truck Vehicle Category  ',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 14, 13, 13)),
                // ),
                // PopularPickupTitle(),
                // Expanded(
                //   child: PopularPickupItems(),
                // ),
                // Text(
                //   'Truck Vehicle Category  ',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 14, 13, 13)),
                // ),
                // PopularTruckTitle(),
                // Expanded(
                //   child: PopularTruckItems(),
                // ),
                // Text(
                //   'Wheeler Vehicle Category  ',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 14, 13, 13)),
                // ),
                // PopularWheelerTitle(),
                // Expanded(
                //   child: PopularWheelerItems(),
                // ),
                // Text(
                //   'Moter Vehicle Category  ',
                //   style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Color.fromARGB(255, 14, 13, 13)),
                // ),
              ],
            ),
          ),
        ),
      ]),
    );
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

Widget buildIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      height: isSelected ? 12 : 10,
      width: isSelected ? 12 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    ),
  );
}

