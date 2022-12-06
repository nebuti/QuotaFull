import 'package:flutter/material.dart';
import 'package:mouse/common/catgory/house_cat/cat_house_buy/houselist/house_office/homepage_houslist.dart';
import 'package:mouse/common/catgory/house_cat/house_data.dart';

import 'package:mouse/common/catgory/video.dart';

import 'package:mouse/common/house/slide.dart';


class DetailsScreen extends StatefulWidget {
  final House house;

  const DetailsScreen({
    Key? key,
    required this.house,
  }) : super(key: key);
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            child: ListView(
              children: [
                Stack(
                  children: [
                    CustomAppBar(),
                  ],
                ),
                Container(
                  height: 150,
                  child: CarouselImages(widget.house.moreImagesUrl),
                ),
                HouseDetails(widget.house),
                Videodis(vidUrl: widget.house.videoUrl),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(
        left: appPadding,
        right: appPadding,
        top: appPadding * 2,
      ),
      child: Container(
        height: size.height * 0.22,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              backgroundColor: Color.fromARGB(255, 132, 153, 127),
              leading: IconButton(
                  color: Color.fromARGB(255, 10, 10, 10),
                  icon: Icon(Icons.arrow_back_ios_new),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => homepage_houseoffice()));
                  }),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'see',
                  style: TextStyle(
                    color: black.withOpacity(0.4),
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  'Information to House ',
                  style: TextStyle(
                      color: black, fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}

const Color white = Colors.white;
const Color black = Colors.black;
const Color red = Colors.red;
const Color darkBlue = Color.fromRGBO(19, 26, 44, 1.0);

//default app padding

const double appPadding = 30.0;

class HouseDetails extends StatefulWidget {
  final House house;

  HouseDetails(this.house);

  @override
  _HouseDetailsState createState() => _HouseDetailsState();
}

class _HouseDetailsState extends State<HouseDetails> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: appPadding,
              left: appPadding,
              right: appPadding,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\Birr${widget.house.price.toStringAsFixed(3)}',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.house.address,
                      style: TextStyle(
                        fontSize: 15,
                        color: black.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Text(
                  '${widget.house.time} hours ago',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: appPadding, bottom: appPadding),
            child: Text(
              'House information',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: appPadding,
              right: appPadding,
              bottom: appPadding * 4,
            ),
            child: Text(
              widget.house.description,
              style: TextStyle(
                color: black.withOpacity(0.4),
                height: 1.5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
