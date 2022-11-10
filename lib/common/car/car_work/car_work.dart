// import 'package:flutter/material.dart';
// import 'package:mouse/common/car/car_detaile.dart';
 

// class workCar extends StatelessWidget {
//   const workCar({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'car for work',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: const dropdown(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
 
// class dropdown extends StatefulWidget {
//   const dropdown({Key? key}) : super(key: key);
 
//   @override
//   _dropdownState createState() => _dropdownState();
// }
 
// class _dropdownState extends State<dropdown> {
   
//   // Initial Selected Value
//   String dropdownvalue = 'others';  
 
//   // List of items in our dropdown menu
//   var items = [   
//     'others',
//     'min',
//     'cargo',
//     'Item 4',
//     'Item 5',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("car for work"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButton(
               
//               // Initial Value
//               value: dropdownvalue,
               
//               // Down Arrow Icon
//               icon: const Icon(Icons.keyboard_arrow_down),   
               
//               // Array list of items
//               items: items.map((String items) {
//                 return DropdownMenuItem(
//                   value: items,
//                   child: Text(items),
//                 );
//               }).toList(),
//               // After selecting the desired option,it will
//               // change button value to selected value
//               onChanged: (String? newValue) {
//                 setState(() {
//                   dropdownvalue = newValue!;
//                   switch (selected){
//  case " mid" : gf,
//  case "cargo" :gg,
//  case "dlg": go,
//  case "bos" : main(),

//                   }
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }