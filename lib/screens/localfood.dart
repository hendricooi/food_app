import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Localfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
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
                color: Colors.grey[100],
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Text("-Local Food    -Koay Teow   -Soup",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ))),
                              Row(
                                children: <Widget>[
                                  Text("Delivery Hours:",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ))),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    alignment: Alignment.center,
                                    child: Text("9.45am",
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
                                    margin: EdgeInsets.symmetric(horizontal: 5),
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
                    Container(
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
                              "assets/images/chickenrice.png",
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Kim Poh Roasted Chicken &\nDuck Rice",
                                  style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Text("-Local Food    -Rice     - Chicken",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ))),
                              Row(
                                children: <Widget>[
                                  Text("Delivery Hours:",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ))),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
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
                                    margin: EdgeInsets.symmetric(horizontal: 5),
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
                    Container(
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
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                              Text("-Mamak    -Local Food    -Halal",
                                  style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ))),
                              Row(
                                children: <Widget>[
                                  Text("Delivery Hours:",
                                      style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ))),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: 50,
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
                                    margin: EdgeInsets.symmetric(horizontal: 5),
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
