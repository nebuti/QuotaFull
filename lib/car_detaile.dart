// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mouse/car_sedan.dart';
import 'package:video_player/video_player.dart';


void main() => runApp(const car_detail());

/// Stateful widget to fetch and then display video content.
class car_detail extends StatefulWidget {
  const car_detail({Key? key}) : super(key: key);

  @override
 _car_detailState createState() =>_car_detailState();
}

class _car_detailState extends State<car_detail> {
  late VideoPlayerController _controller;
   int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [

    'assets/images/c4.png',
    'assets/images/h20.png',
    'assets/images/h5.png',
  ];


  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
        _controller = VideoPlayerController.asset("videos/sample.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
        
        
         leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => car_sedan()));
                }),
          backgroundColor: Color.fromARGB(255, 79, 230, 9), title: Container()),
        // ignore: unnecessary_new
        body: new Column(
        children: <Widget>[
          

           new Text("Description", 
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
            
            ),
            
        Container(
          height: 200,
          child: Column(
            children: [
              Row(
                children: [
               
                  // ignore: unnecessary_new
                  new Text("cathagories :", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 0, 0, 0),
               ),),
                 Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("Toyota Toyota Hilux", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ]),

                ]),
                     
                   

               SizedBox(width: 10,),
               
            
               Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Condition: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("Used in Ethiopia", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Row(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ]),

                ]),
                     
                   
                Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Transmission : ", 
      
              style: TextStyle(
                fontSize: 16, 
         
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text(" Manual :", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
               SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ]),

                ]),
                     
                   
             
               Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Engine Type : ", 
      
              style: TextStyle(
                fontSize: 16, 
           
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text(" Diesel", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
               
               
                 SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ]),

                ]),
                  
               
               Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Body Type :  : ", 
      
              style: TextStyle(
                fontSize: 16, 
            
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("Pickup :", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                
                 SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Row(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ])
                ]
                
                ),
               Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Date :", 
      
              style: TextStyle(
                fontSize: 16, 
         
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("October 25, 2022", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                
                 SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Row(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ])]),
              Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Engine Size : : ", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("  2500", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                
                 SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ])
                ]),
               Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Color :  : ", 
      
              style: TextStyle(
                fontSize: 16, 
         
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("Blue", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]
                ),
               
                 SizedBox(width: 30,),
               Row(
                  children: [
                 
                  // ignore: unnecessary_new
                  new Text("Mileage: ", 
      
              style: TextStyle(
                fontSize: 16, 
             color: Color.fromARGB(255, 0, 0, 0),
     

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("230000", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 56, 55, 55),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),
                ]) ]),
                Row(
                children: [
                 
                  // ignore: unnecessary_new
                  new Text("Price: ", 
      
              style: TextStyle(
                fontSize: 16, 
         
                color: Color.fromARGB(255, 22, 22, 22),

               ),),
               Column(

                  children: [
               
                  // ignore: unnecessary_new
                  new Text("ብር 2,000,000(Negotiable)", 
      
              style: TextStyle(
                fontSize: 16, 
             
                color: Color.fromARGB(255, 0, 0, 0),
                backgroundColor: Color.fromARGB(255, 189, 185, 185),

               ),),
                ]),]),
                     
                      ],
          
            
          ),
        ),
        
          Column(
           mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image.network(
                      images[index % images.length],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    controller.jumpToPage(currentIndex - 1);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                IconButton(
                  onPressed: () {
                    controller.jumpToPage(currentIndex + 1);
                  },
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
           ]  
            ),
    
         _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ]
      
        ),
      
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
                  _controller.setLooping(true);
                  _controller.setVolume(1.0);
                  
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
  ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
 Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }