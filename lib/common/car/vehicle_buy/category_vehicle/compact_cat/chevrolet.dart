import 'package:flutter/material.dart';
import 'package:mouse/Home_Sc.dart';
import 'package:mouse/common/car/car_data.dart';
import 'package:mouse/common/car/vehicle_buy/body_list/car_detias.dart';

import '../../../../../main.dart';
import '../../../../bottum.dart';

class Chevrolet_compact extends StatefulWidget {
  @override
  State<Chevrolet_compact> createState() => _Chevrolet_compactState();
}

class _Chevrolet_compactState extends State<Chevrolet_compact> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              color: Color.fromARGB(255, 10, 10, 10),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 42, 236, 3),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }),
        ),
        body: Container(
          child: Chevrolet_comp(isFav: isFav),
        ));
  }
}

class Chevrolet_comp extends StatefulWidget {
  final bool isFav;
  const Chevrolet_comp({
    Key? key,
    required this.isFav,
  }) : super(key: key);

  @override
  State<Chevrolet_comp> createState() => _Chevrolet_compState();
}

class _Chevrolet_compState extends State<Chevrolet_comp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Row(
            children: [
              Cars(isFav: widget.isFav),
            ],
          ),
          BottomButtons(),
        ],
      ),
    );
  }
}
//colors used in this app

const Color white = Colors.white;
const Color black = Colors.black;
const Color red = Colors.red;
const Color darkBlue = Color.fromRGBO(19, 26, 44, 1.0);

//default app padding

const double appPadding = 30.0;

class Cars extends StatefulWidget {
  final bool isFav;
  const Cars({
    Key? key,
    required this.isFav,
  }) : super(key: key);
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  Widget _buildCar(BuildContext context, int index) {
    bool isFav = false;
    Size size = MediaQuery.of(context).size;
    Car car = carList[index];

    return widget.isFav
        ? (!car.isFav
            ? Text("")
            : GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailsScreen(
                        car: car,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: appPadding, vertical: appPadding / 2),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 250,
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  height: 200,
                                  width: size.width,
                                  fit: BoxFit.cover,
                                  image: AssetImage(car.imageUrl),
                                ),
                              ),
                              Positioned(
                                right: appPadding / 2,
                                top: appPadding / 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                    icon: car.isFav
                                        ? Icon(
                                            Icons.favorite_rounded,
                                            color: red,
                                          )
                                        : Icon(
                                            Icons.favorite_border_rounded,
                                            color: black,
                                          ),
                                    onPressed: () {
                                      setState(() {
                                        car.isFav = !car.isFav;
                                      });
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$${car.price.toStringAsFixed(3)}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                car.address,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15,
                                    color: black.withOpacity(0.4)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '${car.Code} bedrooms / ',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            // Text(
                            //   '${car.bathRooms} bathrooms / ',
                            //   style: TextStyle(
                            //     fontSize: 15,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            Text(
                              '${car.Kadesh} sqft',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ))
        : GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailsScreen(
                    car: car,
                  ),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: appPadding, vertical: appPadding / 2),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 250,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              height: 200,
                              width: size.width,
                              fit: BoxFit.cover,
                              image: AssetImage(car.imageUrl),
                            ),
                          ),
                          Positioned(
                            right: appPadding / 2,
                            top: appPadding / 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: IconButton(
                                icon: car.isFav
                                    ? Icon(
                                        Icons.favorite_rounded,
                                        color: red,
                                      )
                                    : Icon(
                                        Icons.favorite_border_rounded,
                                        color: black,
                                      ),
                                onPressed: () {
                                  setState(() {
                                    car.isFav = !car.isFav;
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${car.price.toStringAsFixed(3)}',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(
                            car.address,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 15, color: black.withOpacity(0.4)),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '${car.Code} Code / ',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        // Text(
                        //   '${car.bathRooms} bathrooms / ',
                        //   style: TextStyle(
                        //     fontSize: 15,
                        //     fontWeight: FontWeight.w600,
                        //   ),
                        // ),
                        Text(
                          '${car.Kadesh} sqft',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: carList.length,
        itemBuilder: (context, index) {
          return _buildCar(context, index);
        },
      ),
    );
  }
}

final _car10 = Car(
    imageUrl: 'assets/images/c2.png',
    videoUrl: "assets/videos/cv1.mp4",
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
    Code: 3,
    
    garages: 1,
    Kadesh: 1.42,
    time: 240,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c6.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);
final _car11 = Car(
    imageUrl: 'assets/images/c10.png',
    videoUrl: "assets/videos/cv3.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c6.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);
final _car12 = Car(
    imageUrl: 'assets/images/c1.png',
    videoUrl: "assets/videos/cv2.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
      'assets/images/c6.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
    ]);
final _car13 = Car(
    imageUrl: 'assets/images/c3.png',
    videoUrl: "assets/videos/cv5.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
      'assets/images/c6.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
    ]);
final _car14 = Car(
    imageUrl: 'assets/images/c7.png',
    videoUrl: "assets/videos/cv6.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c11.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);
final _car15 = Car(
    imageUrl: 'assets/images/c8.png',
    videoUrl: "assets/videos/hv7.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c6.png',
      'assets/images/c14.png',
      'assets/images/c6.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);
final _car16 = Car(
    imageUrl: 'assets/images/c9.png',
    videoUrl: "assets/videos/hv8.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c11.png',
      'assets/images/c4.png',
      'assets/images/c17.png',
      'assets/images/c12.png',
      'assets/images/c5.png',
      'assets/images/c1.png',
    ]);
final _car17 = Car(
    imageUrl: 'assets/images/c10.png',
    videoUrl: "assets/videos/hv4.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c9.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
      'assets/images/c3.png',
      'assets/images/c4.png',
      'assets/images/c3.png',
    ]);
final _car18 = Car(
    imageUrl: 'assets/images/c12.png',
    videoUrl: "assets/videos/hv1.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c6.png',
      'assets/images/c9.png',
      'assets/images/c5.png',
      'assets/images/c2.png',
      'assets/images/c4.png',
      'assets/images/c1.png',
    ]);
final _car19 = Car(
    imageUrl: 'assets/images/c13.png',
    videoUrl: "assets/videos/hv2.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c7.png',
      'assets/images/c1.png',
      'assets/images/c9.png',
      'assets/images/c5.png',
      'assets/images/c2.png',
      'assets/images/c4.png',
    ]);
final _car20 = Car(
    imageUrl: 'assets/images/c1.png',
    videoUrl: "assets/videos/hv5.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c9.png',
      'assets/images/c5.png',
      'assets/images/c2.png',
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car1 = Car(
    imageUrl: 'assets/images/c1.png',
    videoUrl: "assets/videos/hv7.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 200.00,
    Code: 4,
    
    garages: 2,
    Kadesh: 1.416,
    time: 20,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c9.png',
      'assets/images/c5.png',
      'assets/images/c2.png',
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car2 = Car(
    imageUrl: 'assets/images/c12.png',
    videoUrl: "assets/videos/cv8.mp4",
    address: '351, Rockwood Dr,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 140.00,
    Code: 4,
    
    garages: 1,
    Kadesh: 1.416,
    time: 30,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c6.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car3 = Car(
    imageUrl: 'assets/images/c2.png',
    videoUrl: "assets/videos/cv4.mp4",
    address: '354, Hendrywood Dr,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 210.00,
    Code: 5,
    
    garages: 1,
    Kadesh: 1.700,
    time: 30,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c3.png',
      'assets/images/c11.png',
      'assets/images/c10.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car4 = Car(
    imageUrl: 'assets/images/c4.png',
    videoUrl: "assets/videos/cv7.mp4",
    address: 'Manison, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 170.00,
    Code: 2,
    
    garages: 1,
    Kadesh: 1.210,
    time: 30,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
      'assets/images/c6.png',
      'assets/images/c4.png',
      'assets/images/c8.png',
    ]);

final _car5 = Car(
    imageUrl: 'assets/images/c1.png',
    videoUrl: "assets/videos/cv6.mp4",
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
    Code: 3,
    
    garages: 1,
    Kadesh: 1.42,
    time: 240,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c3.png',
      'assets/images/c11.png',
      'assets/images/c10.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car8 = Car(
    imageUrl: 'assets/images/c4.png',
    videoUrl: "assets/videos/cv4.mp4",
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
    Code: 3,
    
    garages: 1,
    Kadesh: 1.42,
    time: 240,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c1.png',
      'assets/images/c2.png',
      'assets/images/c3.png',
      'assets/images/c11.png',
      'assets/images/c10.png',
      'assets/images/c9.png',
    ]);

final _car7 = Car(
    imageUrl: 'assets/images/c9.png',
    videoUrl: "assets/videos/cv1.mp4",
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
    Code: 3,
    
    garages: 1,
    Kadesh: 1.42,
    time: 240,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car6 = Car(
    imageUrl: 'assets/images/c2.png',
    videoUrl: "assets/videos/cv7.mp4",
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
    Code: 3,
    
    garages: 1,
    Kadesh: 1.42,
    time: 240,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c8.png',
      'assets/images/c13.png',
      'assets/images/c7.png',
      'assets/images/c3.png',
      'assets/images/c7.png',
      'assets/images/c1.png',
    ]);

final _car9 = Car(
    imageUrl: 'assets/images/c9.png',
    videoUrl: "assets/videos/cv6.mp4",
    address: 'BackStreet, MI 49526,SF',
    description:
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
    price: 150.00,
    Code: 3,
    
    garages: 1,
    Kadesh: 1.42,
    time: 240,
    isFav: false,
    moreImagesUrl: [
      'assets/images/c16.png',
      'assets/images/c14.png',
      'assets/images/c8.png',
      'assets/images/c13.png',
      'assets/images/c7.png',
      'assets/images/c11.png',
    ]);

final List<Car> carList = [
  _car7,
  _car8,
  _car9,
  _car10,
  _car12,
  _car11,
  _car13,
  _car14,
  _car15,
  _car16,
  _car2,
  _car1,
  _car3,
  _car4,
  _car5,
  _car6,
  _car7,
  _car8,
  _car9,
  _car16,
  _car17,
  _car18,
  _car19,
  _car20,
  _car10,
  _car12,
  _car11,
  _car13,
  _car14,
  _car15,
];

List<String> categoryList = [
  '<\$220.00',
  'For Sale',
  '3-4 bed room',
  'Garages',
  'Modular kitchen'
];
