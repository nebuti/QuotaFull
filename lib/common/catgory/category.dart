// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mouse/common/catgory/car.dart';
import 'package:mouse/common/catgory/car_data.dart';
import 'package:mouse/common/catgory/car_detias.dart';

import 'package:mouse/common/catgory/house_cat/house.dart';
import 'package:mouse/common/catgory/house_cat/house_data.dart';

import 'house_detias.dart';


class category extends StatefulWidget {
  @override
  _categoryState createState() => _categoryState();
}

List<String> images = [
  'assets/images/cs1.png',
  'assets/images/cs2.png',
  'assets/images/cs3.png',
];

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: slide(),
          ),
          Text(
            'House Category  ',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 14, 13, 13)),
          ),
          PopularcarTitle(),
          Expanded(
            child: PopularhouseItems(),
          ),
          Text(
            'Car Category  ',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 14, 13, 13)),
          ),
          PopularhouseTitle(),
          Expanded(
            child: PopularcarItems(),
          ),
        ],
      ),
    ));
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

class catego extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 230, 9),
          title: Container(
            child: Column(),
          )),
      body: category(),
    );
  }
}

class PopularcarTiles extends StatelessWidget {
 String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;
  String address;
  String description;
  int Code;

  double Kadesh;
  int garages;
  int time;
  String videoUrl;
  List<String> moreImagesUrl;
  bool isFav;

  PopularcarTiles({
    Key? key,
    required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price,
      required this.slug,
      required this.address,
      required this.description,
      required this.Code,
      required this.Kadesh,
      required this.garages,
      required this.time,
      required this.moreImagesUrl,
      required this.isFav,
      required this.videoUrl
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
     return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailsScreen_car(
                car: Car(
              imageUrl: imageUrl,
              address: address,
              description: description,
              price: double.parse(price),
           
              Code: Code,
              Kadesh: Kadesh,
              garages: garages,
              time: time,
              moreImagesUrl: moreImagesUrl,
              isFav: isFav,
              videoUrl: videoUrl,
            ));
          }),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),
            ]),
            child: Card(
                color: Color.fromARGB(255, 104, 209, 127),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 160,
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Container(
                          //     alignment: Alignment.topRight,
                          //     width: double.infinity,
                          //     padding: EdgeInsets.only(right: 5, top: 5),
                          //     // child: Container(
                          //     //   height: 28,
                          //     //   width: 28,
                          //     //   decoration: BoxDecoration(
                          //     //       shape: BoxShape.circle,
                          //     //       color: Color.fromARGB(253, 121, 118, 118),
                          //     //       // ignore: prefer_const_literals_to_create_immutables
                          //     //       boxShadow: [
                          //     //         BoxShadow(
                          //     //           color: Color.fromARGB(255, 213, 241, 148),
                          //     //           blurRadius: 25.0,
                          //     //           offset: Offset(0.0, 0.75),
                          //     //         ),
                          //     //       ]),
                          //     //   // child: Icon(
                          //     //   //   Icons.favorite,
                          //     //   //   color: Color.fromARGB(255, 8, 8, 8),
                          //     //   //   size: 16,
                          //     //   // ),
                          //     // ),
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              // ignore: prefer_interpolation_to_compose_strings
                              'assets/images/' + imageUrl + ".png",
                              width: 160,
                              height: 100,
                              fit: BoxFit.cover,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 3, 3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(179, 144, 156, 146),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              child: Icon(
                                Icons.near_me,
                                color: Color.fromARGB(255, 13, 14, 13),
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 12, 12, 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 10, 10, 10),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 13, 14, 13),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 22, 22, 22),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 206, 206, 207),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("($numberOfRating)",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('\birr' + price.toString(),
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 2, 2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularcarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            "Popluar car",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
          TextButton(
              child:    Text(
            "See all",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold),
          ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => house())));
              })
         
         
        ],
      ),
    );
  }
}

class PopularcarItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularcarTiles(
          name: "Corolla",
          imageUrl: "c7",
          rating: '4.9',
          numberOfRating: '200',
          slug: "fried_egg",
          videoUrl: "videos/cv3.mp4",
          address: 'Janison, MI 49428,SF',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          Code: 4,
         
          garages: 2,
          Kadesh: 1.416,
          time: 20,
          isFav: false,
          moreImagesUrl: [
            'assets/images/c4.png',
            'assets/images/c7.png',
            'assets/images/c8.png',
            'assets/images/c1.png',
            'assets/images/c9.png',
            'assets/images/c3.png',
          ],
           price: "17.03"
        ),
        PopularcarTiles(
            name: "v8",
            imageUrl: "c2",
            rating: "4.9",
            numberOfRating: "100",
            slug: "",
            videoUrl: "videos/cv2.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
             price: "176.03",
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
              'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
        PopularcarTiles(
            name: "pick_up",
            imageUrl: "c3",
            rating: "4.0",
            numberOfRating: "50",
            slug: "",
            videoUrl: "videos/cv1.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
           price: "1899.03",
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
              'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
        PopularcarTiles(
            name: "SUV",
            imageUrl: "c4",
            rating: "4.00",
            numberOfRating: "100",
            slug: "",
            videoUrl: "videos/cv4.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
           price: "169.3",
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
               'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
        PopularcarTiles(
          name: "Bmw",
          imageUrl: "c5",
          rating: "4.6",
          numberOfRating: "150",
          slug: "",
          videoUrl: "videos/cv5.mp4",
          address: 'Janison, MI 49428,SF',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          Code: 4,
         
          garages: 2,
          Kadesh: 1.416,
          time: 20,
          isFav: false,
          moreImagesUrl: [
            'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
          ],
         price: "145.03",
        ),
        PopularcarTiles(
            name: "Corolla",
            imageUrl: "c6",
            rating: "4.00",
            numberOfRating: "100",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
           price: "233.03",
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
              'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
        PopularcarTiles(
            name: "Hyundai",
            imageUrl: "c8",
            rating: "4.2",
            numberOfRating: "70",
           price: "198.3",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
              'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
        PopularcarTiles(
            name: "Luxury",
            imageUrl: "c11",
            rating: '4.9',
            numberOfRating: '200',
            slug: "fried_egg",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
           price: "980.3",
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
              'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
        PopularcarTiles(
            name: "Executive",
            rating: "4.6",
            numberOfRating: "150",
            slug: "",
            imageUrl: 'assets/images/c2.png',
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
           price: "897.03",
            Code: 4,
           
            garages: 2,
            Kadesh: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
               'assets/images/c9.png',
              'assets/images/c4.png',
              'assets/images/c8.png',
              'assets/images/c1.png',
              'assets/images/c7.png',
              'assets/images/c3.png',
            ]),
      ],
    );
  }
}

class PopularhouseTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  String slug;
  String address;
  String description;
  int bedRooms;
  int bathRooms;
  double sqFeet;
  int garages;
  int time;
  String videoUrl;
  List<String> moreImagesUrl;
  bool isFav;
  PopularhouseTiles(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price,
      required this.slug,
      required this.address,
      required this.description,
      required this.bathRooms,
      required this.bedRooms,
      required this.sqFeet,
      required this.garages,
      required this.time,
      required this.moreImagesUrl,
      required this.isFav,
      required this.videoUrl})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailsScreen(
                house: House(
              imageUrl: imageUrl,
              address: address,
              description: description,
              price: double.parse(price),
              bathRooms: bathRooms,
              bedRooms: bedRooms,
              sqFeet: sqFeet,
              garages: garages,
              time: time,
              moreImagesUrl: moreImagesUrl,
              isFav: isFav,
              videoUrl: videoUrl,
            ));
          }),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                blurRadius: 15.0,
                offset: Offset(0, 0.75),
              ),
            ]),
            child: Card(
                color: Color.fromARGB(255, 104, 209, 127),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: Container(
                  width: 160,
                  height: 150,
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          // Align(
                          //   alignment: Alignment.topRight,
                          //   child: Container(
                          //     alignment: Alignment.topRight,
                          //     width: double.infinity,
                          //     padding: EdgeInsets.only(right: 5, top: 5),
                          //     // child: Container(
                          //     //   height: 28,
                          //     //   width: 28,
                          //     //   decoration: BoxDecoration(
                          //     //       shape: BoxShape.circle,
                          //     //       color: Color.fromARGB(253, 121, 118, 118),
                          //     //       // ignore: prefer_const_literals_to_create_immutables
                          //     //       boxShadow: [
                          //     //         BoxShadow(
                          //     //           color: Color.fromARGB(255, 213, 241, 148),
                          //     //           blurRadius: 25.0,
                          //     //           offset: Offset(0.0, 0.75),
                          //     //         ),
                          //     //       ]),
                          //     //   // child: Icon(
                          //     //   //   Icons.favorite,
                          //     //   //   color: Color.fromARGB(255, 8, 8, 8),
                          //     //   //   size: 16,
                          //     //   // ),
                          //     // ),
                          //   ),
                          // ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Center(
                                child: Image.asset(
                              // ignore: prefer_interpolation_to_compose_strings
                              'assets/images/' + imageUrl + ".png",
                              width: 160,
                              height: 100,
                              fit: BoxFit.cover,
                            )),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 3, 3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(right: 5),
                            child: Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromARGB(179, 144, 156, 146),
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      blurRadius: 25.0,
                                      offset: Offset(0.0, 0.75),
                                    ),
                                  ]),
                              child: Icon(
                                Icons.near_me,
                                color: Color.fromARGB(255, 13, 14, 13),
                                size: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text(rating,
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 5),
                                child: Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 12, 12, 12),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 10, 10, 10),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 13, 14, 13),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 22, 22, 22),
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 8,
                                      color: Color.fromARGB(255, 206, 206, 207),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Text("($numberOfRating)",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5, right: 5),
                            child: Text('\birr' + price.toString(),
                                style: TextStyle(
                                    color: Color.fromARGB(255, 2, 2, 2),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600)),
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class PopularhouseTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            "Popluar place",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
         TextButton(
              child:    Text(
            "See all",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold),
          ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: ((context) => car())));
              })
         
        ],
      ),
    );
  }
}

class PopularhouseItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularhouseTiles(
            name: "Bole",
            imageUrl: "h1",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
              'assets/images/h1.png',
              'assets/images/h4.png',
              'assets/images/h8.png',
              'assets/images/h9.png',
              'assets/images/h7.png',
              'assets/images/h2.png',
            ]),
        PopularhouseTiles(
            name: "piassa",
            imageUrl: "h12",
            rating: "4.9",
            numberOfRating: "100",
            price: "879.03",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
           'assets/images/h11.png',
              'assets/images/h14.png',
              'assets/images/h1.png',
              'assets/images/h9.png',
              'assets/images/h7.png',
              'assets/images/h12.png',
            ]),
        PopularhouseTiles(
            name: "Bole",
            imageUrl: "h10",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
             'assets/images/h6.png',
              'assets/images/h4.png',
              'assets/images/h8.png',
              'assets/images/h9.png',
              'assets/images/h17.png',
              'assets/images/h21.png',
            ]),
        PopularhouseTiles(
            name: "hayet",
            imageUrl: "h7",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
             'assets/images/h1.png',
              'assets/images/h4.png',
              'assets/images/h8.png',
              'assets/images/h9.png',
              'assets/images/h7.png',
              'assets/images/h2.png',
            ]),
        PopularhouseTiles(
            name: "saris",
            imageUrl: "h6",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
             'assets/images/h9.png',
              'assets/images/h7.png',
              'assets/images/h2.png',
            'assets/images/h1.png',
              'assets/images/h4.png',
              'assets/images/h8.png',

            ]),
        PopularhouseTiles(
          name: "Bole",
          imageUrl: "h11",
          rating: "4.00",
          numberOfRating: "100",
          slug: "",
          videoUrl: "videos/hv3.mp4",
          address: 'Janison, MI 49428,SF',
          description:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          bedRooms: 4,
          bathRooms: 2,
          garages: 2,
          sqFeet: 1.416,
          time: 20,
          isFav: false,
          moreImagesUrl: [
               'assets/images/h9.png',
              'assets/images/h7.png',
              'assets/images/h2.png',
               'assets/images/h1.png',
              'assets/images/h4.png',
              'assets/images/h8.png',
        
          ],
          price: '56',
        ),
        PopularhouseTiles(
            name: "Mexiko",
            imageUrl: "h7",
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: "",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
             'assets/images/h1.png',
              'assets/images/h4.png',
              'assets/images/h8.png',
              'assets/images/h9.png',
              'assets/images/h7.png',
              'assets/images/h2.png',
            ]),
        PopularhouseTiles(
            name: "Bole",
            imageUrl: "h8",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg",
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
         'assets/images/h1.png',
              'assets/images/h14.png',
              'assets/images/h18.png',
              'assets/images/h19.png',
              'assets/images/h17.png',
              'assets/images/h12.png',
            ]),
        PopularhouseTiles(
            name: "Megenagna",
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: "",
            imageUrl: 'assets/images/h10.png',
            videoUrl: "videos/hv3.mp4",
            address: 'Janison, MI 49428,SF',
            description:
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            bedRooms: 4,
            bathRooms: 2,
            garages: 2,
            sqFeet: 1.416,
            time: 20,
            isFav: false,
            moreImagesUrl: [
             'assets/images/h10.png',
              'assets/images/h2.png',
              'assets/images/h3.png',
              'assets/images/h4.png',
              'assets/images/h5.png',
              'assets/images/h6.png',
            ]),
      ],
    );
  }
}
