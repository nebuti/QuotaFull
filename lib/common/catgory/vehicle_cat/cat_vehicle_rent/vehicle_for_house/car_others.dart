import 'package:flutter/material.dart';
import 'package:mouse/common/bottum.dart';
import 'package:mouse/common/catgory/car_data.dart';

import '../../cat_vehicle_buy/vehicle_for_house/car_detias_house.dart';


class car_others extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Column(
            children: [
              Cars(),
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
  @override
  _CarsState createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  Widget _buildCar(BuildContext context, int index) {
    Size size = MediaQuery.of(context).size;
    Car car = carList[index];

    return GestureDetector(
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
          height: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
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
    videoUrl: "videos/cv1.mp4",
    address: 'megenagna',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car1 = Car(
    imageUrl: 'assets/images/c10.png',
    videoUrl: "videos/cv3.mp4",
    address: 'bole',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car2 = Car(
    imageUrl: 'assets/images/c12.png',
    videoUrl: "videos/cv2.mp4",
    address: 'sarise',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car3 = Car(
    imageUrl: 'assets/images/c13.png',
    videoUrl: "videos/cv5.mp4",
    address: 'gurdsholl',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car4 = Car(
    imageUrl: 'assets/images/c16.png',
    videoUrl: "videos/cv6.mp4",
    address: 'civl',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car5 = Car(
    imageUrl: 'assets/images/c8.png',
    videoUrl: "videos/cv7.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car6 = Car(
    imageUrl: 'assets/images/c19.png',
    videoUrl: "videos/hv8.mp4",
    address: 'Janison, MI 49428,SF',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car7 = Car(
    imageUrl: 'assets/images/c20.png',
    videoUrl: "videos/cv4.mp4",
    address: 'burayu',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car8 = Car(
    imageUrl: 'assets/images/c2.png',
    videoUrl: "videos/cv1.mp4",
    address: 'Asko',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car9 = Car(
    imageUrl: 'assets/images/c17.png',
    videoUrl: "videos/cv2.mp4",
    address: 'hayte',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final _car11 = Car(
    imageUrl: 'assets/images/c1.png',
    videoUrl: "videos/cv5.mp4",
    address: 'kurfa',
    description:
        'ConditionUsedMakeToyotaTransmissionAutomaticDrive Type4 Wheel DriveMileage60,000 kmBuild Year2019Body Type4x4-suvs',
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
      'assets/images/c4.png',
      'assets/images/c7.png',
      'assets/images/c4.png',
    ]);
final List<Car> carList = [
  _car3,
  _car7,
  _car5,
  _car10,
  _car1,
  _car2,
  _car6,
  _car4,
  _car5,
  _car8,
  _car11
];

List<String> categoryList = [
  '<\$220.00',
  'For Sale',
  '3-4 bed room',
  'Garages',
  'Modular kitchen'
];
