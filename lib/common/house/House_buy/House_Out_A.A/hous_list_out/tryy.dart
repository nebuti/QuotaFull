// import 'package:flutter/material.dart';

// import '../../../bottum.dart';
// import '../../house_data.dart';
// import 'house_detias.dart';


// class Yeka extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.bottomCenter,
//         children: [
//           Column(
//             children: [
//               Yeka_list(),
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

// class Yeka_list extends StatefulWidget {
//   @override
//   _Yeka_listState createState() => _Yeka_listState();
// }

// class _Yeka_listState extends State<Yeka_list> {
//   Widget _buildHouse(BuildContext context, int index) {
//     Size size = MediaQuery.of(context).size;
//     House house = houseList[index];

//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (_) => DetailsScreen(
//               house: house,
//             ),
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
//                       image: AssetImage(house.imageUrl),
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
//                         icon: house.isFav
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
//                             house.isFav = !house.isFav;
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
//                     '\$${house.price.toStringAsFixed(3)}',
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
//                       house.address,
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
//                     '${house.bedRooms} bedrooms / ',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Text(
//                     '${house.bathRooms} bathrooms / ',
//                     style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   Text(
//                     '${house.sqFeet} sqft',
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
//         itemCount: houseList.length,
//         itemBuilder: (context, index) {
//           return _buildHouse(context, index);
//         },
//       ),
//     );
//   }
// }

// final _house10 = House(
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
// final _house11 = House(
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
// final _house12 = House(
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
// final _house13 = House(
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
// final _house14 = House(
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
// final _house15 = House(
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
// final _house16 = House(
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
// final _house17 = House(
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
// final _house18 = House(
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
// final _house19 = House(
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
// final _house20 = House(
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

// final _house1 = House(
//     imageUrl: 'assets/images/h11.png',
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

// final _house2 = House(
//     imageUrl: 'assets/images/h12.png',
//     videoUrl: "videos/hv8.mp4",
//     address: '351, Rockwood Dr,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 140.00,
//     bedRooms: 4,
//     bathRooms: 2,
//     garages: 1,
//     sqFeet: 1.416,
//     time: 30,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/h6.png',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house3 = House(
//     imageUrl: 'assets/images/h2.png',
//     videoUrl: "videos/hv4.mp4",
//     address: '354, Hendrywood Dr,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 210.00,
//     bedRooms: 5,
//     bathRooms: 3,
//     garages: 1,
//     sqFeet: 1.700,
//     time: 30,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/house6.png',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house4 = House(
//     imageUrl: 'assets/images/h4.png',
//     videoUrl: "videos/hv7.mp4",
//     address: 'Manison, MI 49526,SF',
//     description:
//         'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
//     price: 170.00,
//     bedRooms: 2,
//     bathRooms: 1,
//     garages: 1,
//     sqFeet: 1.210,
//     time: 30,
//     isFav: false,
//     moreImagesUrl: [
//       'assets/images/h6.png',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house5 = House(
//     imageUrl: 'assets/images/h1.png',
//     videoUrl: "videos/hv6.mp4",
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
//       'assets/images/h16.png',
//       'assets/images/h4.png',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house8 = House(
//     imageUrl: 'assets/images/h4.png',
//     videoUrl: "videos/hv4.mp4",
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
//       'assets/images/house6.jpeg',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house7 = House(
//     imageUrl: 'assets/images/h9.png',
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
//       'assets/images/house6.jpeg',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house6 = House(
//     imageUrl: 'assets/images/h9.png',
//     videoUrl: "videos/hv7.mp4",
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
//       'assets/images/house6.jpeg',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final _house9 = House(
//     imageUrl: 'assets/images/h9.png',
//     videoUrl: "videos/hv6.mp4",
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
//       'assets/images/h6.png',
//       'assets/images/h4.jpg',
//       'assets/images/h8.jpg',
//       'assets/images/indoor3.jpg',
//       'assets/images/h7.jpg',
//       'assets/images/indoor5.jpg',
//     ]);

// final List<House> houseList = [
//   _house7,
//   _house8,
//   _house9,
//   _house10,
//   _house12,
//   _house11,
//   _house13,
//   _house14,
//   _house15,
//   _house16,
//   _house2,
//   _house1,
//   _house3,
//   _house4,
//   _house5,
//   _house6,
//   _house7,
//   _house8,
//   _house9,
//   _house16,
//   _house17,
//   _house18,
//   _house19,
//   _house20,
//   _house10,
//   _house12,
//   _house11,
//   _house13,
//   _house14,
//   _house15,
// ];

// List<String> categoryList = [
//   '<\$220.00',
//   'For Sale',
//   '3-4 bed room',
//   'Garages',
//   'Modular kitchen'
// ];
