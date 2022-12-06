// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:mouse/common/house/house.dart';
// import 'package:mouse/grid_search.dart';
// import 'package:mouse/main.dart';



// class pagebuy_car extends StatefulWidget {
//   @override
//   _pagebuy_carState createState() => _pagebuy_carState();
// }

// Route _createRoute() {
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => GridSearchScreen(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child) {
//       const begin = Offset(0.0, 1.0);
//       const end = Offset.zero;
//       const curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

// class _pagebuy_carState extends State<pagebuy_car> {
//   List<String> carList = [
//     'Orange',
//     'Berries',
//     'Lemons',
//     'Apples',
//     'Mangoes',
//     'Dates',
//     'Avocados',
//     'Black Beans',
//     'Chickpeas',
//     'Pinto beans',
//     'White Beans',
//     'Green lentils',
//     'Split Peas',
//     'Rice',
//     'Oats',
//     'Quinoa',
//     'Pasta',
//     'Sparkling water',
//     'Coconut water',
//     'Herbal tea',
//     'Kombucha',
//     'Almonds',
//     'Peannuts',
//     'Chia seeds',
//     'Flax seeds',
//     'Canned tomatoes',
//     'Olive oil',
//     'Broccoli',
//     'Onions',
//     'Garlic',
//     'Carots',
//     'Leafy greens',
//     'Meat',
//   ];
//   final List<String> imagelist = [
//     'assets/images/c4.png',
//     'assets/images/h20.png',
//     'assets/images/h5.png',
//   ];
//   List<String>? carListSearch;
//   final FocusNode _textFocusNode = FocusNode();
//   TextEditingController? _textEditingController = TextEditingController();
//   @override
//   void dispose() {
//     _textFocusNode.dispose();
//     _textEditingController!.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final shape = StadiumBorder();
//     return Scaffold(
//         appBar: AppBar(
//             leading: IconButton(
//                 icon: Icon(Icons.arrow_back),
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                       context, MaterialPageRoute(builder: (context) => house()));
//                 }),
//             backgroundColor: Color.fromARGB(255, 79, 230, 9),
//             title: Container(
//               child: Column(),
//             )),
//         body: ListView(children: [
//           Container(
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                 Color.fromARGB(255, 207, 238, 148),
//                 Color.fromARGB(255, 133, 238, 85)
//               ])),
//               // color: Color.fromARGB(193, 135, 238, 135),
//               padding: const EdgeInsets.only(top: 58.0, right: 10, left: 10),
//               child: Column(children: [
//                 Container(
//                   child: Column(
//                     children: [
//                       Align(
//                         alignment: Alignment.topRight,
//                         child: Column(
//                           children: [
//                             ElevatedButton.icon(
                              
//                               style: ElevatedButton.styleFrom(
                                
//                                 shape: new RoundedRectangleBorder(
//                                   borderRadius:
//                                       new BorderRadius.circular(100.0),
//                                 ),
//                               ),
//                               icon: Icon(
//                                 Icons.search_rounded,
//                                 size: 20.0,
//                               ), //icon data for elevated button
//                               label: Text(
//                                 "search cars ....",
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.bold,
//                                     color: Color.fromARGB(255, 248, 248, 248)),
//                               ),
//                               onPressed: () {
//                                 Navigator.pushReplacement(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             GridSearchScreen()));
//                                 //After successful login we will redirect to profile page. Let's create profile page now
//                               },
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 Text(
//                   "wellcome to car station",
//                   style: TextStyle(
//                       fontSize: 30,
//                       fontWeight: FontWeight.bold,
//                       color: Color.fromARGB(255, 0, 0, 0)),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Container(
//                   // Border width
//                   decoration: BoxDecoration(
//                       color: Color.fromARGB(255, 96, 231, 129),
//                       shape: BoxShape.circle),
//                   child: ClipOval(
//                     child: Image.asset(
//                       "assets/images/broker.png",
//                       height: 200,
//                       width: 200,
//                     ),
//                   ),
//                 ),
//                 Container(
//                     child: Column(children: [
//                   Align(
//                       alignment: Alignment.bottomCenter,
//                       child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               width: 100,
//                               decoration: ShapeDecoration(
//                                   shape: shape,
//                                   gradient: LinearGradient(colors: [
//                                     Colors.orange,
//                                     Colors.green,
//                                     Color.fromARGB(255, 176, 185, 233),
//                                   ])),
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.transparent,
//                                   shadowColor: Colors.transparent,
//                                   elevation: 0,
//                                   shape: new RoundedRectangleBorder(
//                                     borderRadius:
//                                         new BorderRadius.circular(20.0),
//                                   ),
//                                 ),
//                                 // style: ThemeHelper().buttonStyle(),
//                                 child: Text(
//                                   'የስራ ',
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       color:
//                                           Color.fromARGB(255, 248, 248, 248)),
//                                 ),

//                                 onPressed: () {
//                                   Navigator.pushReplacement(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => homepage_carlist()));
//                                   //After successful login we will redirect to profile page. Let's create profile page now
//                                 },
//                               ),
//                             ),
//                             Container(
//                               width: 100,
//                               decoration: ShapeDecoration(
//                                   shape: shape,
//                                   gradient: LinearGradient(colors: [
//                                     Colors.orange,
//                                     Colors.green,
//                                     Color.fromARGB(255, 176, 185, 233),
//                                   ])),
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.transparent,
//                                   shadowColor: Colors.transparent,
//                                   elevation: 0,
//                                   shape: new RoundedRectangleBorder(
//                                     borderRadius:
//                                         new BorderRadius.circular(20.0),
//                                   ),
//                                 ),
//                                 child: Text(
//                                   'የቤት ',
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       color:
//                                           Color.fromARGB(255, 248, 248, 248)),
//                                 ),
//                                 onPressed: () {
//                                   Navigator.pushReplacement(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => Home()));
//                                   //After successful login we will redirect to profile page. Let's create profile page now
//                                 },
//                               ),
//                             ),
//                             Container(
//                               width: 100,
//                               decoration: ShapeDecoration(
//                                   shape: shape,
//                                   gradient: LinearGradient(colors: [
//                                     Colors.orange,
//                                     Colors.green,
//                                     Color.fromARGB(255, 176, 185, 233),
//                                   ])),
//                               child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.transparent,
//                                   shadowColor: Colors.transparent,
//                                   elevation: 0,
//                                   shape: new RoundedRectangleBorder(
//                                     borderRadius:
//                                         new BorderRadius.circular(20.0),
//                                   ),
//                                 ),
//                                 // style: ThemeHelper().buttonStyle(),

//                                 child: Text(
//                                   'የቤሮ ',
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       color:
//                                           Color.fromARGB(255, 248, 248, 248)),
//                                 ),

//                                 onPressed: () {
//                                   Navigator.pushReplacement(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) =>Home()));
//                                   //After successful login we will redirect to profile page. Let's create profile page now
//                                 },
//                               ),
//                             ),
//                           ]))
//                 ]))
//               ]))
//         ]));
//   }
// }
//                           // style: ThemeHelper().buttonStyle(),