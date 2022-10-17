import 'dart:math';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mouse/pages/login_page.dart';

import 'common/theme_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_Sc extends StatefulWidget {
  const Home_Sc({Key? key}) : super(key: key);

  @override
  State<Home_Sc> createState() => Home_ScState();
}

class Home_ScState extends State<Home_Sc> {
  final List<String> imagelist = [
    'assets/images/c4.png',
    'assets/images/h20.png',
    'assets/images/h5.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,

        color: Color.fromARGB(255, 238, 232, 211),

        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: EdgeInsets.all(5.0),
        // margin: const EdgeInsets.only(top: 10.0),
        child: ListView(children: [
          Row
          (  mainAxisAlignment: MainAxisAlignment.start,
            
                children: [
                           ElevatedButton.icon(
                           
                           style: ElevatedButton.styleFrom(
                              
                                shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(20.0),
                               ),
                          ),
          
                          icon: Icon(Icons.call,   size: 30.0,),  //icon data for elevated button
                             label: Text("6778"), //label text 

              onPressed: () {
                //After successful login we will redirect to profile page. Let's create profile page now
                launch('tell:6778');
              },
            ),
            SizedBox(width: 140,),
            
            ElevatedButton(
                   style: ElevatedButton.styleFrom(
                   
                                shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(20.0),
                               ),
                          ),
              // style: ThemeHelper().buttonStyle(),
                      child: Align(
                alignment: Alignment.topRight,
           
                child: Text(  'Register',
                
                  style: TextStyle( fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 248, 248, 248)),
                ),
              ),
              onPressed: () {
                //After successful login we will redirect to profile page. Let's create profile page now
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ]),
          Container(

              // Border width
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 219, 218),
                  shape: BoxShape.circle),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/broker.png",
                  height: 200,
                  width: 200,
                ),
              )),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 0.98,
              enlargeCenterPage: false,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlay: true,
              onPageChanged: (index, reason) {
                print(reason);
                // print(CarouselPageChangedReason.controller);
              },
            ),
            items: imagelist.map((i) {
              return Builder(builder: (context) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOutBack,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(i), fit: BoxFit.cover)),
                );
              });
            }).toList(),
          ),
          SizedBox(height: 0.5),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
                margin: EdgeInsets.only(right: 5, bottom: 0.5),
                width: double.infinity,
                color: Color.fromARGB(255, 171, 252, 105),
                child: Image.asset('assets/images/nav.png', fit: BoxFit.cover),
                alignment: Alignment.bottomRight),
          ),
        ]),
      ),
    );
  }
}
