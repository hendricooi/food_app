import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/rating.dart';
import 'package:food_app/constraints.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Dominos.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Kfc.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Mcd.dart';
import 'package:food_app/screens/body.dart';
import 'package:google_fonts/google_fonts.dart';

class Fastfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Image.asset(
          "assets/images/fastfood.png",
          height: size.height * 0.25,
          width: double.infinity,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                color: Colors.grey[200],
              )),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topCenter,
                      child: Text("Fast Foods",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Mcd()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 120,
                              width: 120,
                              child: Image.asset(
                                "assets/images/mcd.jpg",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("McDonald's",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                          "-Halal    -Fast Food    -Fried Chicken",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ))),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/nostar.png"),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("Delivery Hours:",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ))),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("7.00am",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ))),
                                    ),
                                    Text("-",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12))),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("9.45pm",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kfc()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 120,
                              width: 120,
                              child: Image.asset(
                                "assets/images/KFCLogo.png",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("KFC \n(Kentucky Fried Chicken)",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Text("-Fried Chicken    -Fast Food    -Halal",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ))),
                                Row(
                                  children: <Widget>[
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/starhalf.png"),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("Delivery Hours:",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ))),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("9.00am",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ))),
                                    ),
                                    Text("-",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12))),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("9.15pm",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Dominos()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              height: 120,
                              width: 120,
                              child: Image.asset(
                                "assets/images/Dominos.jpg",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Domino's Pizza",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Text("-Pizza    -Fast Food    -Halal",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ))),
                                Row(
                                  children: <Widget>[
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/star.png"),
                                    rating("assets/icons/starhalf.png"),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("Delivery Hours:",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                        ))),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("10.30am",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ))),
                                    ),
                                    Text("-",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12))),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("9.30pm",
                                          style: GoogleFonts.montserrat(
                                              textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ))),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
