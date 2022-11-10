import 'dart:math';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mouse/common/catgory/category.dart';
import 'package:mouse/pages/favorite.dart';
import 'package:mouse/pages/login_page.dart';
import 'package:mouse/pages/profile_page.dart';

import 'common/theme_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pages/Setting.dart';

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
          color: Color.fromARGB(255, 238, 232, 211),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        margin: EdgeInsets.all(5.0),
        // margin: const EdgeInsets.only(top: 10.sta0),
        child: Column(children: [     
          Row
          (  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          Container(// Border width
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 228, 219, 218),
                  shape: BoxShape.circle),
              child: ClipOval(
                child: Image.asset(
                  "assets/images/broker.png",
                  width: 200,
                ),
              )),
          CarouselSlider(
            options: CarouselOptions(
              height: 100.0,
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
                color: Color.fromARGB(255, 97, 201, 12),
                child: Image.asset('assets/images/nav.png', fit: BoxFit.cover),
                alignment: Alignment.bottomRight),
          ),
        ]),
      ),
    );
  }
}


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        color: Color.fromARGB(255, 51, 235, 106),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(),
              const SizedBox(height: 40,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 40,),
              DrawerItem(
                name: 'Profile',
                icon: Icons.account_box_rounded,
                onPressed: ()=> onItemPressed(context, index: 0),
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Category',
                  icon: Icons.category,
                  onPressed: ()=> onItemPressed(context, index: 1)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'favourites',
                  icon: Icons.favorite_outline,
                  onPressed: ()=> onItemPressed(context, index: 2)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'others',
                  icon: Icons.add_business_outlined,
                  
                  onPressed: ()=> onItemPressed(context, index: 3)
              ),
              const SizedBox(height: 30,),
              const Divider(thickness: 1, height: 10, color: Colors.grey,),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Setting',
                  icon: Icons.settings,
                  onPressed: ()=> onItemPressed(context, index: 4)
              ),
              const SizedBox(height: 30,),
              DrawerItem(
                  name: 'Log out',
                  icon: Icons.logout,
                  onPressed: ()=> onItemPressed(context, index: 5)
              ),

            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}){
    Navigator.pop(context);
    switch(index){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        break;
      case 1: 
       Navigator.push(context, MaterialPageRoute(builder: (context) => catego()));
        break;
        case 2:
           Navigator.push(context, MaterialPageRoute(builder: (context) => favor_page()));
        break;
          case 4:
           Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
        break;
        case 5: 
       Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        break;
       }
  }

  Widget headerWidget() {
    
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('assets/horse.png'),
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('selomon', style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(height: 10,),
            Text('selo123@gmail.com', style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );

  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.name, required this.icon, required this.onPressed}) : super(key: key);

  final String name;
  final IconData icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 40,
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.white,),
            const SizedBox(width: 40,),
            Text(name, style: const TextStyle(fontSize: 20, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}