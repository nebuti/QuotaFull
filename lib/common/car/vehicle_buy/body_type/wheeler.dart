
import 'package:flutter/material.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/wheeler/Bajaj%20.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/wheeler/Piaggio.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/wheeler/TVS.dart';
import 'package:mouse/common/car/vehicle_buy/category_vehicle/wheeler/others.dart';


class PopularWheelerTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Row(
            children: [
              Text(
                "Compact car",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w300),
              ),
          
          // Image.asset("assets/images/car_wheeler.png") 
           ],
          ),
          
          Text(
            "See all",
            style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 36, 61, 21),
                fontWeight: FontWeight.w100),
          )
        ],
      ),
    );
  }
}

class PopularWheelerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        PopularWheelerTiles(
            name: "Bajaj",
            imageUrl: "c1",
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            button: Bajaj_whe()),
        PopularWheelerTiles(
            name: "Tvs",
            imageUrl: "c2",
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            button: TVS_whe()),
        PopularWheelerTiles(
            name: "Piaggio",
            imageUrl: "car_minbus",
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            button: Piaggio_whe()),
        PopularWheelerTiles(
            name: "Others",
            imageUrl: "car_pickup",
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            button: Other_whe()),
        
      ],
    );
  }
}
class PopularWheelerTiles extends StatelessWidget {
  String name;
  String imageUrl;
  String rating;
  String numberOfRating;
  String price;
  Widget button;

  PopularWheelerTiles(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.rating,
      required this.numberOfRating,
      required this.price,
      required this.button})
      : super(key: key);
      
     @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) {
      //       return homepage_carlist();
      //     }),
      //   );
      // },
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
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Colors.orange, Colors.red,Color.fromARGB(255, 30, 255, 37)]
            ),),
                            child: TextButton(
                                child: Text(
                                  'see more, ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.lightGreenAccent,
                                          fontWeight: FontWeight.bold),
                                ),
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => button));
                                }),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.only(left: 5, top: 5),
                            child: Text(name,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 3, 3, 3),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500)),
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
                            child: Text('\birr' + price,
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
