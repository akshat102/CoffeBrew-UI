import 'package:coffee_brew/constants/color_templates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetails extends StatefulWidget {
  final imgPath, headerColor;
  CoffeeDetails({this.headerColor, this.imgPath});
  @override
  _CoffeeDetailsState createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: height,
            width: width,
            color: Colors.transparent,
          ),
          Container(
            height: height,
            width: width,
            color: ColorTemplate().leftBarColor,
          ),
          Container(
            height: height / 2,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
          ),
          Container(
            height: (height / 4) + 25,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              image: DecorationImage(
                image: AssetImage('assets/doodle.png'),
                fit: BoxFit.none,
              ),
            ),
          ),
          Container(
            height: (height / 4) + 25,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          Container(
            height: (height / 4) + 25,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: widget.headerColor.withOpacity(0.9),
            ),
          ),
          Positioned(
            top: 35.0,
            left: 20.0,
            child: Icon(Icons.arrow_back_ios),
          ),
          Positioned(
            top: 35.0,
            right: 20.0,
            child: Icon(Icons.shopping_cart),
          ),
          Positioned(
            top: (height / 4) - 100,
            left: width / 4,
            child: Hero(
              tag: widget.imgPath,
              child: Image(
                image: AssetImage(widget.imgPath),
                height: 175.0,
                width: 175.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: height/4 + 85,
              left: width/7,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Grady\s COLD BREW',
                      style: GoogleFonts.bigShouldersText(
                        color: Color(0xff23163d),
                        fontSize: 24.0,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.account_circle),
                        SizedBox(width: 15),
                        Text(
                          '1.5k',
                          style: GoogleFonts.bigShouldersText(
                            color: ColorTemplate().firstSlice,
                              fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 15,),
                        Container(
                          width: 1.0,
                          height: 20.0,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 15),
                        Icon(Icons.account_circle),
                        SizedBox(width: 15),
                        Text(
                          'No. 1',
                          style: GoogleFonts.bigShouldersText(
                            color: ColorTemplate().firstSlice,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              top: height/2 + 10,
              left: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'About Us',
                    style: GoogleFonts.bigShouldersText(
                      color: Color(0xff23163d),
                      fontSize: 30.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cold brew with chicory and  unique blend of spices fpr 20 hours, our concentrate is packed with flavor',
                    style: GoogleFonts.bigShouldersText(
                      color: Color(0xffb5abbb),
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    width: width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        buildOneItem('\$65'),
                        SizedBox(width: 20,),
                        buildOneItem('\$120'),
                        SizedBox(width: 20,),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: ColorTemplate().buttonColor,
                        ),
                        child: Center(
                          child: Text(
                            'BUY NOW',
                            style: GoogleFonts.bigShouldersText(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 25,),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: ColorTemplate().buttonColor,
                            width: 2
                          )
                        ),
                        child: Center(
                          child: Icon(Icons.bookmark, size: 17,),
                        ),
                      )
                    ],
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }

  buildOneItem(String s) {
    return Stack(
      children: <Widget>[
        Container(
          height: 125,
          width: 200,
          color: Colors.transparent,
        ),
        Positioned(
            top: 50,
            child: Container(
              height: 75,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    spreadRadius: 2,
                    color: Colors.grey.withOpacity(0.2)
                  ),

                ],
                color: Colors.white,
              ),
            ),
        ),
        Positioned(
            right: 5.0,
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/coffee3.png'),
                ),
              ),
            ),
        ),
        Positioned(
            left: 10,
            top: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                    s,
                    style: GoogleFonts.bigShouldersText(
                      color: ColorTemplate().firstSlice,
                      fontSize: 25.0,
                    ),
                ),
                Text(
                  'COLD BREW KIT',
                  style: GoogleFonts.bigShouldersText(
                    color: ColorTemplate().firstSlice,
                    fontSize: 20.0,
                  ),
                ),

              ],
            ),
        ),
      ],
    );
  }
}
