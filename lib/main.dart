import 'dart:async';
//@dart=2.9

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mouse/Home_Sc.dart';
import 'package:mouse/category.dart';
import 'package:mouse/introduction_screen.dart';
import 'package:mouse/pages/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'common/car/car.dart';
import 'common/house/house.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Color.fromARGB(0, 240, 216, 216)));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kadesh',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 228, 225, 222),
                Color.fromARGB(255, 112, 109, 109),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/images/logoo.png",
                  height: 300.0,
                  width: 300.0,
                ),
              ],
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items = const [
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.car_rental,
      size: 30,
    ),
    Icon(
      Icons.house_sharp,
      size: 30,
    ),
    Icon(
      Icons.category,
      size: 30,
    ),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 55, 70, 62),
      drawer: const NavigationDrawer(),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 79, 230, 9),
          title: Container(
              child: Align(
                  alignment: Alignment.topRight,
                  child: ClipOval( 
                     child: Material(
                    color: Color.fromARGB(255, 66, 180, 60), // Button color
                    child: InkWell(
                      splashColor: Colors.red, // Splash color
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: SizedBox(
                        width: 51,
                        height: 51,
                        child: Icon(
                          Icons.add,
                        ),
                      ),

                      
                    ),
                  )) // animationCurve: ,
                  ))),

      // appBar: AppBar(

      //   title: const Text('Home page',
      //   textAlign: TextAlign.center,
      //   style: TextStyle(

      //   ),),
      //   backgroundColor: Color.fromARGB(255, 0, 168, 6),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 0, 255, 21),
        items: items,
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
          color: Colors.blue,
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: getSelectedWidget(index: index)),
    );
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 1:
        widget = car();
        break;
      case 3:
        widget = category();
        break;
      case 2:
        widget = house();
        break;
      default:
        widget = Home_Sc();
        break;
    }
    return widget;
  }
}
