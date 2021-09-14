import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class deliverinfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        height: 500,
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
                Image.asset(
                  "assets/icons/local.PNG",
                  height: 30,
                  width: 30,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                Text("Shop Malaysia Online (EATLOCAL RM6 OFF)",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold))),
                Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Terms and Condition",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "1. Campaign Period starts from 1st September 2021 till 31st December 2021, while stocks last.\n2. Spend a minimum of RM25.00 on the DeliverEat App/Web and enjoy RM6 OFF with voucher code: EATLOCAL when you checkout with any payment method.\n3. This voucher code is ONLY applicable to delivery orders from all restaurants EXCEPT Domino’s outlets.\n4. This Campaign is limited to SIX (6) redemptions per user per month throughout the Campaign Period.\n5. The Campaign will end when the total redemption limit is reached.\n6. This Campaign is not applicable with any other ongoing Campaigns, discounts, vouchers or membership privileges.\n7. This voucher is not transferable to other parties or exchangeable for cash.\n8. DeliverEat reserves the right to change these terms and conditions at any time without prior notice.",
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      color: Colors.black,
                      height: 1.5,
                      fontSize: 12,
                    )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
