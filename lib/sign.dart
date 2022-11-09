// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:mouse/pages/Setting.dart';
// import 'package:mouse/pages/favorite.dart';
// import 'package:mouse/pages/login_page.dart';
// import 'package:mouse/pages/profile_page.dart';

// import 'category.dart';
// import 'common/car/car_detaile.dart';



// class type extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 79, 230, 9),
//           title: Container(
        
//           )),
//       // ignore: prefer_const_constructors
//       body: Align(
//         alignment: Alignment.topCenter,
          
//            child: type_builed(),
                  
              
               
             
           
           
       
          
//       ),
//     );
//   }
// }

// class type_builed extends StatelessWidget {
//   const type_builed({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//         Size size = MediaQuery.of(context).size;
//    return Container(
//      child: Material(
//         // color: Color.fromARGB(255, 51, 235, 106),
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
            
//         child: ListView(
//           physics: BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
//          children: [
//               // const Divider(
//               //   thickness: 1,
//               //   height: 10,
//               //   color: Colors.grey,
//               // ),
//               const SizedBox(
//                 height: 40,
//               ),
//               DrawerItem(
//                 name: 'Profile',
//                 icon: Icons.account_box_rounded,
//                 onPressed: () => onItemPressed(context, index: 0),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               DrawerItem(
//                   name: 'Category',
//                   icon: Icons.category,
//                   onPressed: () => onItemPressed(context, index: 1)),
//               const SizedBox(
//                 height: 30,
//               ),
//               DrawerItem(
//                   name: 'favourites',
//                   icon: Icons.favorite_outline,
//                   onPressed: () => onItemPressed(context, index: 2)),
//               const SizedBox(
//                 height: 30,
//               ),
//               DrawerItem(
//                   name: 'others',
//                   icon: Icons.add_business_outlined,
//                   onPressed: () => onItemPressed(context, index: 3)),
//               const SizedBox(
//                 height: 30,
//               ),
//               const Divider(
//                 thickness: 1,
//                 height: 10,
//                 color: Colors.grey,
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               DrawerItem(
//                   name: 'Setting',
//                   icon: Icons.settings,
//                   onPressed: () => onItemPressed(context, index: 4)),
//               const SizedBox(
//                 height: 30,
//               ),
//               DrawerItem(
//                   name: 'Log out',
//                   icon: Icons.logout,
//                   onPressed: () => onItemPressed(context, index: 5)),
//             ],
          
//         ),
//       ),
//    ));
//   }

//   void onItemPressed(BuildContext context, {required int index}) {
//     Navigator.pop(context);
//     switch (index) {
//       case 0:
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => ProfilePage()));
//         break;
//       case 1:
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => catego()));
//         break;
//       case 2:
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => favor_page()));
//         break;
//       case 4:
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => SettingsPage()));
//         break;
//       case 5:
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => LoginPage()));
//         break;
//     }
//   }
// }

// class DrawerItem extends StatelessWidget {
//   const DrawerItem({Key? key, required this.name, required this.icon, required this.onPressed}) : super(key: key);

//   final String name;
//   final IconData icon;
//   final Function() onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onPressed,
//       child: SizedBox(
//         height: 40,
//         child: Row(
//           children: [
//             Icon(icon, size: 20, color: Colors.white,),
//             const SizedBox(width: 40,),
//             Text(name, style: const TextStyle(fontSize: 20, color: Colors.white),)
//           ],
//         ),
//       ),
//     );
//   }
// }