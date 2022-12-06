import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Addis_Alem.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Alem_gena.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Bishoftu.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Burayu.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Sebata.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Sendafa.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Sululeta.dart';
import 'package:mouse/common/house/House_rent/House_Out_A.A/hous_list_out/Tulu_dimtu.dart';



class DropDown_out_rent extends StatefulWidget {
  @override
  State<DropDown_out_rent> createState() => _DropDown_out_rentState();
}

class _DropDown_out_rentState extends State<DropDown_out_rent> {
  int selected = 0;
  List<String> items = [
  "Addis Alem", "Alem Gena", "Bishofft",
  "Burayu","Holeta","Sebeta",
  "Sendafa","Sululeta","Tull Dimtu",
 
  ];
  List<Widget> pages = [
   Addis_Alemlist(),Alem_gena_list(),Bishoftu_list(),
   Burayulist(),Sebatalist(),
  Sendafa_list(),Sululetalist(),Tulu_dimtu_list()
  ];
  @override
  // TODO: implement widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: DropdownSearch<String>(
              items: items,
              popupProps: PopupPropsMultiSelection.modalBottomSheet(
                isFilterOnline: true,
                showSelectedItems: false,
                showSearchBox: true,
              ),
              onChanged: (i) {
                switch (i) {
                    case "Addis_Alem":
                    setState(() {
                      selected = 0;
                    });
                    break;
                       case "Alem Gena ":
                    setState(() {
                      selected = 1;
                    });
                    break;
                    case "Bishofft ":
                    setState(() {
                      selected = 2;
                    });
                    break;
                    
                       case "Burayu":
                    setState(() {
                      selected = 3;
                    });
                    break;
                       case "Holeta":
                    setState(() {
                      selected = 4;
                    });
                    break;
                       case "Sebeta":
                    setState(() {
                      selected = 5;
                    });
                    break;
                       case "Sendafa":
                    setState(() {
                      selected = 6;
                    });
                    break;
                       case "Gulele":
                    setState(() {
                      selected = 7;
                    });
                    break;
                       case "Lideta":
                    setState(() {
                      selected = 8;
                    });
                    break;
                       case "Tull Dimtu":
                    setState(() {
                      selected = 9;
                    });
                    break;
                  default:
                    setState(() {
                      selected = 0;
                    });
                }
              },
            ),
          ),
          pages[selected]
        ],
      ),
    );
  }
}
