import 'package:flutter/material.dart';

class car_sedan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => car_sedan()));
                })));
  }
}
