import 'package:coffee_brew/constants/color_templates.dart';
import 'package:coffee_brew/screens/blackgold.dart';
import 'package:coffee_brew/screens/coldbrew.dart';
import 'package:coffee_brew/screens/goldbrew.dart';
import 'package:coffee_brew/screens/mccafe.dart';
import 'package:coffee_brew/screens/nescafe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final colorTemplate = ColorTemplate();
  var _selectedIndex = 0;
  List allOptions = [
    BlackGold(),
    ColdBrew(),
    NesCafe(),
    McCafe(),
    GoldBrew(),
  ];
  List isSelected = [true, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: height,
              width: width,
              color: Colors.transparent,
            ),
            Container(
              height: height,
              width: width / 5,
              color: colorTemplate.leftBarColor,
            ),
            Positioned(
              left: width / 5,
              child: Container(
                height: height,
                width: width - (width / 5),
                color: Colors.white,
              ),
            ),
            Positioned(
              top: 35.0,
              left: 20.0,
              child: Icon(Icons.menu),
            ),
            Positioned(
              top: 35.0,
              right: 20.0,
              child: Icon(Icons.shopping_cart),
            ),
            Positioned(
              top: height - (height - 100.0),
              left: (width/5) + 25.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('CoffeHouse',style: GoogleFonts.bigShouldersText(
                    color: Color(0xffa59fb0),
                    fontSize: 40.0,
                  ),),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    height: 40.0,
                      width: 225.0,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.grey.withOpacity(0.4),
                            )
                          ),
                          contentPadding: EdgeInsets.only(top: 10.0, left: 10.0),
                          hintText: 'search...',
                          hintStyle: GoogleFonts.bigShouldersText(
                            color: Color(0xffa59fb0),
                            fontSize: 15.0,
                          ),
                          suffixIcon: Icon(Icons.search,
                          color: Colors.grey.withOpacity(0.4),
                          ),
                        ),
                      ),
                  )

                ],
              )
            ),
            buildSideNavi(),
            Positioned(
              top: height/3 + 5.0,
                left: width/5+25.0,
                child: Container(
                  height: height - ((height/3) + 50.0),
                  width: width - ((width/5)+40.0),
                  child: allOptions[_selectedIndex],
                ))
          ],
        ),
      ),
    );
  }

  buildSideNavi() {
    return  Positioned(
      top: 75.0,
      child: RotatedBox(
        quarterTurns: 3,
        child: Container(
            height: MediaQuery.of(context).size.width/5,
          width: MediaQuery.of(context).size.height-100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buidOption('Black Gold', 0),
              buidOption('Cold brew', 1),
              buidOption('Nescafe', 2),
              buidOption('Mc Cafe', 3),
              buidOption('Costa', 4),

            ],
          ),
        ),
      ),
    );
  }

  buidOption(String s, int i) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        isSelected[i]? Container(
          height: 8.0,
            width: 8.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff23163d),
            ),
        ): Container(
          height: 8.0,
          width: 8.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              _selectedIndex = i;
              isOptionSelected(i);
            });
          },
          child: Text(
            s,
            style: isSelected[i] ? GoogleFonts.bigShouldersText(
              color: Color(0xff23163d),
              fontSize: 18.0,
            ): GoogleFonts.bigShouldersText(
              color: Color(0xffa59fb0),
              fontSize: 17.0,
            ),
          ),
        ),
      ],
    );
  }

  void isOptionSelected(int i) {
    var prevIndex = isSelected.indexOf(true);
    isSelected[i] = true;
    isSelected[prevIndex] = false;
  }
}
