import 'package:flutter/material.dart';
// import 'package:mouse/common/car/buyCar.dart';
// import 'package:mouse/common/car/car_detaile.dart';
// import 'package:mouse/common/car/car_sedan.dart';
import 'package:mouse/common/car/car_work/cargo.dart';
import 'package:mouse/common/car/car_work/others.dart';

class car_work extends StatefulWidget {
  const car_work({Key? key}) : super(key: key);
  @override
  _car_workState createState() => _car_workState();
}

class _car_workState extends State<car_work> {
  // Initial Selected Value
  String dropdownvalue = 'others';
  Widget activePage = Text("");
  // List of items in our dropdown menu
  var items = [
    'others',
    'min',
    'cargo',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          // ignore: sort_child_properties_last
          child: Column(
            children: [
             
              // DropdownButton<String>(
              //     value: dropdownvalue,
              //     icon: const Icon(Icons.keyboard_arrow_down),
              //     style: const TextStyle(
              //       color: Color.fromARGB(255, 53, 49, 49),
              //     ),
              //     underline: Container(
              //       height: 2,
              //       color: Color.fromARGB(255, 149, 49, 49),
              //     ),
              //     onChanged: (String? newValue) {
              //       setState(() {
              //         switch (newValue) {
              //           case "others":
              //             activePage = Car_others();
              //             break;
              //           case "min":
              //             activePage = car_cargo();
              //             break;
              //           case "Item 4":
              //             activePage = car_cargo();
              //             break;
              //           case "Item 5":
              //             activePage = car_cargo();
              //             break;
              //         }
              //       });
              //     },
              //     items: const [
              //       DropdownMenuItem<String>(
              //           value: 'cargo',
              //            child: Text("cargo")),
              //       DropdownMenuItem<String>(value: 'min',
              //        child: Text("min")),
              //       DropdownMenuItem<String>(
              //           value: 'others', 
              //           child: Text("others")),
              //       DropdownMenuItem<String>(value: 'bus', 
              //       child: Text("other")),
              //       DropdownMenuItem<String>(value: 'max',
              //        child: Text("max")),
              //     ]),
              // Expanded(
              //   child: Container(
              //     child: Column(
              //       children: [
                     
              //         ListView(
              //           children: [
              //             activePage,
              //           ],
              //         ),
              //       ],
              //     ),
              //   ),
              // )
            ],
          ),
        ));
  }
}
