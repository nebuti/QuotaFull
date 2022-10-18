import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'main.dart';



class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  ///Changed a little bit of buttons styling and text for the thumbnail lol
  ///Thanks for coming here :-)

  final List<PageViewModel> pages = [
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {},
            child: const Text(
              "Why to wait!",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        image: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Color.fromARGB(255, 229, 231, 233),
                  width: 80,
                  height: 100,
                  child: Image.asset('assets/images/logoo.png',
                      width: double.infinity, fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                width: 5.0,
                height: 5.0,
              ),
              Container(
                color: Color.fromARGB(255, 229, 231, 233),
                width: 500,
                height: 150,
                child: Image.asset('assets/images/broker.png',
                    width: double.infinity, fit: BoxFit.fill),
              )
            ],
          ),
        ),
        decoration: PageDecoration(
            pageColor: Colors.green.shade100,
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ))),
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {},
            child: const Text(
              "Why to wait!",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        image: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Color.fromARGB(255, 229, 231, 233),
                  width: 80,
                  height: 100,
                  child: Image.asset('assets/images/logoo.png',
                      width: double.infinity, fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                width: 5.0,
                height: 5.0,
              ),
              Container(
                color: Color.fromARGB(255, 229, 231, 233),
                width: 500,
                height: 150,
                child: Image.asset('assets/images/c2.png',
                    width: double.infinity, fit: BoxFit.fill),
              )
            ],
          ),
        ),
        decoration: PageDecoration(
            pageColor: Colors.green.shade100,
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ))),
    PageViewModel(
        title: 'Connect With Everyone',
        body:
            'Here you can have whatever description you would like to have, you can type it all in here',
        footer: SizedBox(
          height: 45,
          width: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                // primary: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 8),
            onPressed: () {},
            child: const Text(
              "Why to wait!",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        image: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Color.fromARGB(255, 229, 231, 233),
                  width: 80,
                  height: 100,
                  child: Image.asset('assets/images/logoo.png',
                      width: double.infinity, fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                width: 5.0,
                height: 5.0,
              ),
              Container(
                color: Color.fromARGB(255, 229, 231, 233),
                width: 500,
                height: 150,
                child: Image.asset('assets/images/h2.png',
                    width: double.infinity, fit: BoxFit.fill),
              )
            ],
          ),
        ),
        decoration: PageDecoration(
            pageColor: Colors.green.shade100,
            titleTextStyle: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 79, 230, 9),
            title: Container(
            
              child: Column(
                ),

            )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
          
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('Kadesh', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) {
          
          const home = const Home();
          return home;
        }));
  }
}