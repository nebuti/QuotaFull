// import 'package:flutter/material.dart';
// import 'package:mouse/common/car/car_buy/car_house/car_detias.dart';

// import '../../bottum.dart';
// import '../car_data.dart';



// class car_min extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Column(
//             children: [
//               Cars(),
//             ],
//           ),
//           BottomButtons(),
//         ],
//       ),
//     );
//   }
// }
// //colors used in this app

// const Color white = Colors.white;
// const Color black = Colors.black;
// const Color red = Colors.red;
// const Color darkBlue = Color.fromRGBO(19, 26, 44, 1.0);

// //default app padding

// const double appPadding = 30.0;

// class Cars extends StatefulWidget {
//   @override
//   _CarsState createState() => _CarsState();
// }

// class _CarsState extends State<Cars> {
//   Widget _buildCar(BuildContext context, int index) {
//     Size size = MediaQuery.of(context).size;
//     Car car = carList[index];

//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => DetailsScreen(car: car, ),
//           ),
//         );
//       },
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             horizontal: appPadding, vertical: appPadding / 2),
//         child: Container(
//           height: 250,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Stack(
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(20),
//                     child: Image(
//                       height: 180,
//                       width: size.width,
//                       fit: BoxFit.cover,
//                       image: AssetImage(car.imageUrl),
//                     ),
//                   ),
//                   Positioned(
//                     right: appPadding / 2,
//                     top: appPadding / 2,
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: white,
//                           borderRadius: BorderRadius.circular(15)),
//                       child: IconButton(
//                         icon: car.isFav
//                             ? Icon(
//                                 Icons.favorite_rounded,
//                                 color: red,
//                               )
//                             : Icon(
//                                 Icons.favorite_border_rounded,
//                                 color: black,
//                               ),
//                         onPressed: () {
//                           setState(() {
//                             car.isFav = !car.isFav;
//                           });
//                         },
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text(
//                     '\$${car.price.toStringAsFixed(3)}',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Expanded(
//                     child: Text(
//                       car.address,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                           fontSize: 15, color: black.withOpacity(0.4)),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text(
//                     '${car.bedRooms} bedrooms / ',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Text(
//                     '${car.bathRooms} bathrooms / ',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Text(
//                     '${car.sqFeet} sqft',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         physics: BouncingScrollPhysics(),
//         itemCount: carList.length,
//         itemBuilder: (context, index) {
//           return _buildCar(context, index);
//         },
//       ),
//     );
//   }
// }


// final _car10 = Car(
//     imageUrl: 'assets/images/h2.png',
//     videoUrl: "videos/hv1.mp4",
//     address: 'BackStreet, MI 49526,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 150.00,
//     bedRooms: 3,
//     bathRooms: 1,
//     garages: 1,
//     sqFeet: 1.42,
//     time: 240,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/h26.png',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car1 = Car(
//     imageUrl: 'assets/images/h10.png',
//     videoUrl: "videos/hv3.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car2 = Car(
//     imageUrl: 'assets/images/h12.png',
//     videoUrl: "videos/hv2.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car3 = Car(
//     imageUrl: 'assets/images/h13.png',
//     videoUrl: "videos/hv5.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car4 = Car(
//     imageUrl: 'assets/images/h16.png',
//     videoUrl: "videos/hv6.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car5 = Car(
//     imageUrl: 'assets/images/h8.png',
//     videoUrl: "videos/hv7.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car6 = Car(
//     imageUrl: 'assets/images/h19.png',
//     videoUrl: "videos/hv8.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car7 = Car(
//     imageUrl: 'assets/images/h20.png',
//     videoUrl: "videos/hv4.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car8 =Car(
//     imageUrl: 'assets/images/h22.png',
//     videoUrl: "videos/hv1.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car9 = Car(
//     imageUrl: 'assets/images/h17.png',
//     videoUrl: "videos/hv2.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final _car11 = Car(
//     imageUrl: 'assets/images/h1.png',
//     videoUrl: "videos/hv5.mp4",
//     address: 'Janison, MI 49428,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 200.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 2,
//     sqFeet: 1.416,
//     time: 20,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);
// final List<Car> carList = [
// _car3,
//   _car7,
//   _car5,
//   _car10,
//   _car1,
//   _car2,
//   _car6,
//   _car4,
//   _car5,
//   _car8,
//   _car11
  
// ];

// List<String> categoryList = [
//   '<\$220.00',
//   'For Sale',
//   '3-4 bed room',
//   'Garages',
//   'Modular kitchen'
// ];
