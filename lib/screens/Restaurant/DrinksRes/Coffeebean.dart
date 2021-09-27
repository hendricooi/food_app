import 'package:flutter/material.dart';
import 'package:food_app/screens/fooditems/caramellattee.dart';
import 'package:food_app/screens/fooditems/mocha.dart';
import 'package:food_app/screens/fooditems/vanillacookie.dart';
import 'package:google_fonts/google_fonts.dart';

class Coffeebean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/coffeebean.jpg")),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.brown.withOpacity(0.7),
                            Colors.white.withOpacity(0.7),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 80),
                        alignment: Alignment.center,
                        child: Text(
                          "The Coffee Bean & Tea Leaf",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: Text(
                          "This is what we are devoting our lives to, making sure every experience as unique and \npersonal so you, too, will Find your Flavor.",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          )),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
                  Container(
                    // alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black.withOpacity(0.10))),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Vanilla Cookies & Cream Ice Blended®",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "Pure Cookies & Cream Ice Blended that combines creamy vanilla with chocolate cookie pieces.",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ),
                              TextButton.icon(
                                icon: Icon(Icons.price_check),
                                label: Text('Check Price'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Vanilla()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/vanilla.jpeg",
                              height: 150, fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black.withOpacity(0.10))),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "The Original Mocha",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "Delicious coffee that extract and our Special Dutch™ chocolate powder and milk, blended with ice then topped with whipped cream.",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ),
                              TextButton.icon(
                                icon: Icon(Icons.price_check),
                                label: Text('Check Price'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Mocha()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/mocha.jpeg",
                              height: 150, fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors.black.withOpacity(0.10))),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Caramel Latte",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "A freshly pulled shot of espresso with French Deluxe™ vanilla powder, caramel sauce, steamed milk, topped with thick foam, and a drizzle of caramel sauce.",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black, fontSize: 12)),
                              ),
                              TextButton.icon(
                                icon: Icon(Icons.price_check),
                                label: Text('Check Price'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CaramelLattee()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/latte.jpg",
                              height: 150, fit: BoxFit.fill),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
