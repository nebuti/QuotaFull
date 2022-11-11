import 'package:flutter/material.dart';
import 'package:mouse/common/car/buyCar.dart';
import 'package:mouse/common/car/car_detaile.dart';
import 'package:mouse/common/car/car_work/cargo.dart';

class car_house extends StatefulWidget {
  const car_house({Key? key}) : super(key: key);
  @override
  _car_houseState createState() => _car_houseState();
}

class _car_houseState extends State<car_house> {
  // Initial Selected Value
  String dropdownvalue = 'others';

  // List of items in our dropdown menu
  var items = [
    'others',
    'min',
    'cargo',
    'bus ',
    'max',
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
              //       setState(() {});
              //     },
              //     items: const [
              //       DropdownMenuItem<String>(value: 'cargo', child: Text("go")),
              //       DropdownMenuItem<String>(value: 'min', child: Text("more")),
              //       DropdownMenuItem<String>(
              //           value: 'others', child: Text("data")),
              //       DropdownMenuItem<String>(
              //           value: 'bus', child: Text("focus")),
              //       DropdownMenuItem<String>(value: 'max', child: Text("see")),
              //     ]),
              car_cargo()
            ],
          ),
        ));
  }
}
