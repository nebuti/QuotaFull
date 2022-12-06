import 'package:flutter/material.dart';
import 'package:mouse/main.dart';

class homepage_work extends StatefulWidget {
  const homepage_work({super.key});

  @override
  State<homepage_work> createState() => _homepage_workState();
}

class _homepage_workState extends State<homepage_work> {
  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    Text(
      "All",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "large",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Mid",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Small",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    ),
    Text(
      "Place",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
        backgroundColor: Color.fromARGB(255, 215, 214, 214),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 57, 247, 9),
            leading: IconButton(
                color: Color.fromARGB(255, 10, 10, 10),
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => Home()));
                }),
          ),
          backgroundColor: Color.fromARGB(0, 66, 246, 16),
          //   // elevation: 0,
          //   // leading: Padding(
          //   //   padding: const EdgeInsets.only(left: 24.0),

          // ),
          body: Container(
            color: Color.fromARGB(255, 164, 232, 115),
            child: Column(
              children: [
                // i want to eat
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36.0, vertical: 18),
                    child: Row(
                      children: [
                        Text(
                          ' house categorys',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )),

                // tab bar
                TabBar(tabs: myTabs),

                // tab bar view
                Expanded(
                  child: TabBarView(
                    children: [

                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
