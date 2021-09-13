import 'package:flutter/material.dart';
import 'package:food_app/components/foodoption.dart';
import 'package:food_app/components/search.dart';
import 'package:food_app/constraints.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          search(
            onChanged: (value) {},
          ),
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
                Foodoption("assets/images/burger.jpeg", "Fast Food"),
                Foodoption("assets/images/drinks.jpg", "Drinks"),
                Foodoption("assets/images/dessert.png", "Desserts"),
                Foodoption("assets/images/local.jpg", "Local"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text("Offer&Discounts",
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
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/grab.jpg",
                            ),
                            Positioned(
                                bottom: 4,
                                left: 10,
                                child: Text("Enjoy 10% OFF with Self Pick-Up",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                    )))),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                        child: Stack(
                          children: [
                            Image.asset(
                              "assets/images/foodpanda.jpg",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
