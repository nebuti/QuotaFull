import 'package:flutter/material.dart';
import 'package:mouse/common/car/buyCar.dart';
import 'package:mouse/common/car/car_detaile.dart';

class car_office extends StatefulWidget {
  const car_office({Key? key}) : super(key: key);
  @override
  _car_officeState createState() => _car_officeState();
}

class _car_officeState extends State<car_office> {
  // Initial Selected Value
  String dropdownvalue = 'others';

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
          child: DropdownButton<String>(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              style: const TextStyle(
                color: Color.fromARGB(255, 53, 49, 49),
              ),
              underline: Container(
                height: 2,
                color: Color.fromARGB(255, 149, 49, 49),
              ),
              onChanged: (String? newValue) {
                setState(() {
                  print("newValue");
                });
              },
              items: const [
                DropdownMenuItem<String>(value: 'cargo', child: Text("data")),
                DropdownMenuItem<String>(value: 'min', child: Text("data")),
                DropdownMenuItem<String>(value: 'others', child: Text("data")),
                DropdownMenuItem<String>(value: 'bus', child: Text("data")),
                DropdownMenuItem<String>(value: 'max', child: Text("data")),
              ]),
        ));
  }
}
