import 'package:coffee_brew/constants/color_templates.dart';
import 'package:coffee_brew/screens/coffe_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ColdBrew extends StatefulWidget {
  @override
  _ColdBrewState createState() => _ColdBrewState();
}

class _ColdBrewState extends State<ColdBrew> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        builListItem('assets/coffee4.png', '150', ColorTemplate().secondSlice),
        builListItem('assets/coffee2.png', '150', ColorTemplate().firstSlice)


      ],
    );
  }

  builListItem(String s, String t, Color secondSlice) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CoffeeDetails(headerColor: secondSlice,imgPath: s,)));
      },
      child: Stack(
        children: <Widget>[
          Container(
            height: 300,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.transparent,
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 200,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: AssetImage('assets/doodle.png'),
                  fit: BoxFit.none,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 200,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white.withOpacity(0.6),
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 200,
              width: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: secondSlice.withOpacity(0.9),
              ),
            ),
          ),
          Positioned(
            right: 2.0,
            child: Hero(
              tag: s,
              child: Container(
                height: 250.0,
                width: 150.0,
                child: Image(
                  image: AssetImage(s),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
              top: 125,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Price',
                    style: GoogleFonts.bigShouldersText(
                        color: Color(0xff23163d), fontSize: 15.0),
                  ),
                  Text(
                    '\$' + t,
                    style: GoogleFonts.bigShouldersText(
                        color: Colors.white, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Grady\'s COLD BREW',
                    style: GoogleFonts.bigShouldersText(
                        color: Colors.black, fontSize: 20.0),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Container(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '65 Reviews',
                              style: GoogleFonts.bigShouldersText(
                                  color: Colors.white, fontSize: 12.0),
                            ),
                            SmoothStarRating(
                              starCount: 5,
                              size: 15,
                              color: Colors.white,
                              borderColor: Colors.white,
                              rating: 3.0,
                            )
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 75.0,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.add,
                                  size: 17,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Add',
                                  style: GoogleFonts.bigShouldersText(
                                    color: Color(0xff23163d),
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
