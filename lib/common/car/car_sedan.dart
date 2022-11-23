// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// import 'car_buy/car_work/car_work.dart';


// class car_sedan extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             leading: IconButton(
//                 icon: Icon(Icons.arrow_back),
//                 onPressed: () {
//                   Navigator.pushReplacement(context,
//                       MaterialPageRoute(builder: (context) => car_sedan()));
//                 }),
//             backgroundColor: Color.fromARGB(255, 79, 230, 9),
//             title: Container()),
//         // ignore: unnecessary_new
//         body: new Column(children: <Widget>[
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20.0),
//               ),
//             ),
//             // style: ThemeHelper().buttonStyle(),

//             // ignore: prefer_const_constructors
//             child: Text(
//               'Cheek  ',
//               // ignore: prefer_const_constructors
//               style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Color.fromARGB(255, 248, 248, 248)),
//             ),

//             onPressed: () {
//               Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => Videodis(),
//                   ));
//               //After successful login we will redirect to profile page. Let's create profile page now
//             },
//           ),
//           HorizontalList(),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//                 alignment: Alignment.centerLeft,
//                 // ignore: prefer_const_constructors
//                 child: Text('Recent products')),
//           ),
//           Flexible(child: Products()),
//         ]));
//   }
// }

// class HorizontalList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 40.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[
//           Category(
//             image_location: 'images/cats/tshirt.png',
//             image_caption: 'shirt',
//           ),
//           Category(
//             image_location: 'images/cats/dress.png',
//             image_caption: 'dress',
//           ),
//           Category(
//             image_location: 'images/cats/jeans.png',
//             image_caption: 'pants',
//           ),
//           Category(
//             image_location: 'images/cats/formal.png',
//             image_caption: 'formal',
//           ),
//           Category(
//             image_location: 'images/cats/informal.png',
//             image_caption: 'formal',
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Category extends StatelessWidget {
//   final String image_location;
//   final String image_caption;

//   Category({required this.image_location, required this.image_caption});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(2.0),
//       child: InkWell(
//         onTap: () {},
//         child: Container(
//           width: 80.0,
//           child: ListTile(
//               title: Image.asset(
//                 image_location,
//                 width: 40.0,
//                 height: 40.0,
//               ),
//               subtitle: Container(
//                 alignment: Alignment.topCenter,
//                 child: Text(
//                   image_caption,
//                   style: TextStyle(fontSize: 12.0),
//                 ),
//               )),
//         ),
//       ),
//     );
//   }
// }

// class Products extends StatefulWidget {
//   @override
//   _ProductsState createState() => _ProductsState();
// }

// class _ProductsState extends State<Products> {
//   var product_list = [
//     {
//       "name": "Blazer",
//       "picture": "assets/images/c1.png",
//       "old_price": 120,
//       "price": 85,
//     },
//     {
//       "name": "Red dress",
//        "picture": "assets/images/c6.png",
//       "old_price": 100,
//       "price": 50,
//     },
//     {
//       "name": "Red dress",
//        "picture": "assets/images/c2.png",
//       "old_price": 100,
//       "price": 50,
//     },
//     {
//       "name": "Red dress",
//        "picture": "assets/images/c4.png",
//       "old_price": 100,
//       "price": 50,
//     },
//     {
//       "name": "Red dress",
//        "picture": "assets/images/c7.png",
//       "old_price": 100,
//       "price": 50,
//     },
//     {
//       "name": "Red dress",
//       "picture": "assets/images/c3.png",
//       "old_price": 100,
//       "price": 50,
//     },
//     {
//       "name": "Red dress",
//      "picture": "assets/images/c2.png",
//       "old_price": 100,
//       "price": 50,
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         itemCount: product_list.length,
//         gridDelegate:
//             SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//         itemBuilder: (BuildContext context, int index) {
//           return Padding(
//             padding: const EdgeInsets.all(4.0),
//             child: Single_prod(
//               prod_name: product_list[index]['name'],
//               prod_pricture: product_list[index]['picture'],
//               prod_old_price: product_list[index]['old_price'],
//               prod_price: product_list[index]['price'],
//             ),
//           );
//         });
//   }
// }

// class Single_prod extends StatelessWidget {
//   final prod_name;
//   final prod_pricture;
//   final prod_old_price;
//   final prod_price;

//   Single_prod({
//     this.prod_name,
//     this.prod_pricture,
//     this.prod_old_price,
//     this.prod_price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Hero(
//           tag: prod_name,
//           child: Material(
//             child: InkWell(
//               onTap: () {},
//               child: GridTile(
//                   footer: Container(
//                     color: Colors.white70,
//                     child: ListTile(
//                       leading: Text(
//                         prod_name,
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       ),
//                       title: Text(
//                         "\$$prod_price",
//                         style: TextStyle(
//                             color: Colors.red, fontWeight: FontWeight.w800),
//                       ),
//                       subtitle: Text(
//                         "\$$prod_old_price",
//                         style: TextStyle(
//                             color: Colors.black54,
//                             fontWeight: FontWeight.w800,
//                             decoration: TextDecoration.lineThrough),
//                       ),
//                     ),
//                   ),
//                   child: Image.asset(
//                     prod_pricture,
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           )),
//     );
//   }
// }

// // class Videodis extends StatefulWidget {

// //   const Videodis({Key? key,}) : super(key: key);

// //   @override
// //   _VideodisState createState() => _VideodisState();
// // }

// // class _VideodisState extends State<Videodis> {
// //   late VideoPlayerController _controller;

// //   @override
// //   void initState() {
// //     super.initState();
// //     // _controller = VideoPlayerController.network(
// //     //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
// //     _controller = VideoPlayerController.asset("videos/hv1.mp4")
// //       ..initialize().then((_) {
// //         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
// //         setState(() {});
// //       });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: _controller.value.isInitialized
// //           ? AspectRatio(
// //               aspectRatio: _controller.value.aspectRatio,
// //               child: VideoPlayer(_controller),
// //             )
// //           : Container(),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     super.dispose();
// //     _controller.dispose();
// //   }
// // }
