import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Addis_Ketema.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Akaky_Kaliti.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Arada.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Bole.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Gullele.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Kirkos..dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Kolfe_Keranio%20.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Lemi_kura.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Lideta%20.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Nifase_Selik.dart';
import 'package:mouse/common/house/House_buy/House_In_A.A/hous_list_In/Yeka.dart';


class DropDown_In extends StatefulWidget {
  @override
  State<DropDown_In> createState() => _DropDown_InState();
}

class _DropDown_InState extends State<DropDown_In> {
  int selected = 0;
  List<String> items = [
  "Bole", "Yeka", "Addis Ketema",
  "Akaky_Kaliti","Arada","Nifas selik",
  "Gulele","Kirkose","Lideta",
  "Kolefe_keranio","Lemi_Kura"
  ];
  List<Widget> pages = [
   Bole_list(),
  Yeka_list(),
  Addis_Ketemalist(),
  Arada_list(),
  Nifas_Seliklist(),
  Akaky_Kalitilist(),
  Gullele_list(),
  Kirkose_list(),
  Lideta_list(),
  Kolfe_Keraniolist(),
  Lemi_kuralist(),
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
                    case "Bole":
                    setState(() {
                      selected = 0;
                    });
                    break;
                       case "Yeka ":
                    setState(() {
                      selected = 1;
                    });
                    break;
                    case "Akaky_Kaliti ":
                    setState(() {
                      selected = 2;
                    });
                    break;
                    
                       case "Addis Ketema":
                    setState(() {
                      selected = 3;
                    });
                    break;
                       case "Kirkose":
                    setState(() {
                      selected = 4;
                    });
                    break;
                       case "Arada":
                    setState(() {
                      selected = 5;
                    });
                    break;
                       case "Nifas selik":
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
                       case "Kolefe_keranio":
                    setState(() {
                      selected = 9;
                    });
                    break;
                       case "Lemi_Kura":
                    setState(() {
                      selected = 10;
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
