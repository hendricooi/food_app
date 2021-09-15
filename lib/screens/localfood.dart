import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Localfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
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
          "assets/images/rice.png",
          height: size.height * 0.25,
          width: double.infinity,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                  decoration: BoxDecoration(
                color: Colors.white,
              )),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.topCenter,
                      child: Text("Local Food",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.black.withOpacity(0.32)),
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.32))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 120,
                            width: 120,
                            child: Image.asset(
                              "assets/images/7village.jpg",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("7 Village Noodle House",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold))),
                              Text("-Local Food    -Koay Teow   -Soup    ",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ))),
                              Text(
                                "Delivery Hours: 9.45am - 9.15pm",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                )),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.32))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 120,
                            width: 120,
                            child: Image.asset(
                              "assets/images/chickenrice.png",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Kim Poh Roasted Chicken & Duck Rice",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold))),
                              Text("-Local Food    -Rice   -Chinese",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ))),
                              Text(
                                "Delivery Hours: 9am - 9.45pm",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                )),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.32))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 120,
                            width: 120,
                            child: Image.asset(
                              "assets/images/pelita.png",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Nasi Kandar Pelita",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold))),
                              Text("-Halal    -Malaysian Food   -Mamak",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ))),
                              Text(
                                "Delivery Hours: 11am - 9.30pm",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                )),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ],
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
