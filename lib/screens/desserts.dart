import 'package:flutter/material.dart';
import 'package:food_app/components/rating.dart';
import 'package:food_app/constraints.dart';
import 'package:food_app/screens/Restaurant/DessertRes/Baskin.dart';
import 'package:food_app/screens/Restaurant/DessertRes/Blackball.dart';
import 'package:food_app/screens/Restaurant/DessertRes/Mat.dart';
import 'package:food_app/screens/body.dart';
import 'package:google_fonts/google_fonts.dart';

class Desserts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
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
          "assets/images/desserts.png",
          height: size.height * 0.25,
          width: double.infinity,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                color: Colors.grey[100],
              )),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topCenter,
                      child: Text("Desserts",
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
                          MaterialPageRoute(builder: (context) => Blackball()),
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
                                "assets/images/blackball.png",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("BlackBall",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Text("-Dessert    -Bubble Tea",
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
                                      child: Text("9.30am",
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
                          MaterialPageRoute(builder: (context) => Mat()),
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
                                "assets/images/mat.jpeg",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Mat Toh Yau Dessert",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Text("-Dessert    -Fruits",
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
                          MaterialPageRoute(builder: (context) => Baskin()),
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
                                "assets/images/baskin.png",
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Baskin Robbins",
                                    style: GoogleFonts.roboto(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold))),
                                Text("-Dessert    -Halal   -Ice Cream",
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
                                    rating("assets/icons/star.png"),
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
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("11.00am",
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
