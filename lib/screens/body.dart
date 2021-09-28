import 'package:flutter/material.dart';
import 'package:food_app/components/foodoption.dart';
import 'package:food_app/screens/Offer/delivereatoffer.dart';
import 'package:food_app/screens/Restaurant/DrinksRes/Starbucks.dart';
import 'package:food_app/screens/Restaurant/FastFoodRes/Mcd.dart';
import 'package:food_app/screens/desserts.dart';
import 'package:food_app/screens/drinks.dart';
import 'package:food_app/screens/fastfood.dart';
import 'package:food_app/screens/Offer/foodpandaoffer.dart';
import 'package:food_app/screens/Offer/graboffer.dart';
import 'package:food_app/screens/localfood.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // search(
            //   onChanged: (value) {},
            // ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text("Categories",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold))),
            ),
            Container(
              height: 125,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fastfood()),
                        );
                      },
                      child:
                          Foodoption("assets/images/burger.jpeg", "Fast Food")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Drinks()),
                        );
                      },
                      child: Foodoption("assets/images/drinks.jpg", "Drinks")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Desserts()),
                        );
                      },
                      child:
                          Foodoption("assets/images/dessert.png", "Desserts")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Localfood()),
                        );
                      },
                      child: Foodoption("assets/images/local.jpg", "Local")),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text("Offer & Discounts",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold))),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Graboffer()),
                            );
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/grab.jpg",
                                ),
                                Positioned(
                                  bottom: 4,
                                  left: 10,
                                  child: Text("Enjoy 20% OFF with Self Pick-Up",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                      ))),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Foodpandaoffer()),
                            );
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/foodpanda.jpg",
                                  height: 125,
                                  fit: BoxFit.fill,
                                  width: 175,
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => delivereatoffer()),
                            );
                          },
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Image.asset(
                                  "assets/images/local.PNG",
                                  height: 125,
                                  fit: BoxFit.fill,
                                  width: 175,
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
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Top Rated",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )))),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Starbucks()),
                );
              },
              child: Stack(children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage("assets/images/starbucks2.jpg"),
                          fit: BoxFit.fill),
                    )),
                Positioned(
                  top: 15,
                  right: 10,
                  child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "30mins",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )),
                )
              ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Starbucks",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                Text("[-Beverage,   Tea,   Coffee]",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    )),
                Text("0.1km -  RM2.99 delivery fee",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    )),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Mcd()),
                );
              },
              child: Stack(children: [
                Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage("assets/images/mcd2.jpg"),
                          fit: BoxFit.fill),
                    )),
                Positioned(
                  top: 15,
                  right: 10,
                  child: Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "30mins",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )),
                )
              ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("McDonald's",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                Text("[-Burger,   Halal,   Fries]",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    )),
                Text("1.0km -  RM1.99 delivery fee",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
