import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../house/buyHouse.dart';
import '../../house/rentHouse.dart';
import '../car_sedan.dart';

class workCar extends StatelessWidget {
  @override
  final List<String> items = [
    'A_Item1',
    'A_Item2',
    'A_Item3',
    'A_Item4',
    'B_Item1',
    'B_Item2',
    'B_Item3',
    'B_Item4',
  ];
  List<Product> productList = [
    Product('assets/images/black_chair.jpg', 'Black Chair', 90, 15),
    Product('assets/images/blue_sofa.jpg', 'Awesome Sofa', 100, 10),
    Product('assets/images/copper_lamp.jpg', 'Copper Lamp', 10, 25),
    Product('assets/images/orange_lamp.jpg', 'Orange Lamp', 9, 50),
    Product('assets/images/pink_chair.jpg', 'Comfortable Chair', 15, 5),
    Product('assets/images/white_chair.jpg', 'Simple Chair', 20, 7),
    Product('assets/images/white_lamp.jpg', 'Nice Lamp', 14, 10),
    Product('assets/images/yellow_planter.jpg', 'Awesome Planter', 9, 25),
    Product('assets/images/white_sofa.jpg', 'Blue & white Sofa', 50, 43),
    Product('assets/images/white_planter.jpg', 'White Planter', 5, 25),
  ];

  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => buyCar()));
                }),
            backgroundColor: Color.fromARGB(255, 79, 230, 9),
            title: Container(
              child: Column(),
            )),
        body: ListView(children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
            ),
            // style: ThemeHelper().buttonStyle(),

            child: Text(
              'Cheek  ',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 248, 248, 248)),
            ),

            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => car_sedan()));
              //After successful login we will redirect to profile page. Let's create profile page now
            },
          ),
          Container(
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                isExpanded: true,
                hint: Text(
                  'Select Item',
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).hintColor,
                  ),
                ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  selectedValue = value.toString();

                  switch (selectedValue) {
                    case "A_Item1":
                      selectedValue = car() as String?;
                      break;
                  }
                },

                buttonHeight: 40,
                buttonWidth: 200,
                itemHeight: 40,
                dropdownMaxHeight: 200,
                searchController: textEditingController,
                searchInnerWidget: Padding(
                  padding: const EdgeInsets.only(
                    top: 8,
                    bottom: 4,
                    right: 8,
                    left: 8,
                  ),
                  child: TextFormField(
                    controller: textEditingController,
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      hintText: 'Search for an item...',
                      hintStyle: const TextStyle(fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                searchMatchFn: (item, searchValue) {
                  return (item.value.toString().contains(searchValue));
                },
                //This to clear the search value when you close the menu
                onMenuStateChange: (isOpen) {
                  if (!isOpen) {
                    textEditingController.clear();
                  }
                },
              ),
            ),
          ),
          Container(
              height: 700,
              child: SizedBox(
                height: 250,
                child: ScrollSnapList(
                  itemBuilder: _buildListItem,
                  itemCount: productList.length,
                  itemSize: 150,
                  onItemFocus: (index) {},
                  dynamicItemSize: true,
                  scrollDirection: Axis.vertical,
                ),
              ))
        ]));
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 150,
      height: 300,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          child: Column(
            children: [
              Image.asset(
                product.imagePath,
                fit: BoxFit.cover,
                width: 150,
                height: 180,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product.title,
                style: const TextStyle(fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.cost}',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${product.reviewCount} Reviews',
                      style: const TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Product {
  final String imagePath;

  final String title;

  final double cost;

  final int reviewCount;

  Product(this.imagePath, this.title, this.cost, this.reviewCount);
}
