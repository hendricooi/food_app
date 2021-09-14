import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Grabinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )),
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Icon(Icons.shopping_bag_outlined),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text("Enjoy 20% OFF with Self Pick-Up",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))),
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              ],
            ),
            Column(
              children: [
                Text(
                  "Skip the waiting at restaurants. Enjoy cashless convenience. Pay in the app when you order, be notified when your food is almost ready, and pick it up from the restaurant.\n",
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    height: 1.2,
                  )),
                  textAlign: TextAlign.justify,
                ),
                Text(
                    "For a limited time only, enjoy 20% OFF (up to RM8) when you order via Self Pick-Up with promo code PICKUP20.",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      height: 1.2,
                    ))),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 10, bottom: 5),
              child: Text(
                "T&C - PICKUP20",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  height: 1.2,
                  fontWeight: FontWeight.bold,
                )),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "1.The discount of 20% OFF is up to RM8 per order. No min spend required.\n\n2.Valid for 8 transactions per user, per Grab account or per device during campaign period.\n\n3.Users must enter promo code PICKUP20 at checkout.\n\n4.This promo is valid for self pick-up orders only.\n\n5.Promotion is not valid with any other vouchers or promotions.\n\n6.Grab reserves the right to alter, extend or terminate the promotion, or amend the terms and condition at its sole discretion at any time without prior notice. In case of any disputes directly or indirectly arising from the promotion, the decision of Grab shall be final.\n\n7. These terms and conditions shall be governed by the laws of Malaysia and any dispute arising out of or in connection with promotion shall be referred to the exclusive jurisdiction of courts of Malaysia.",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  height: 1.5,
                )),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
