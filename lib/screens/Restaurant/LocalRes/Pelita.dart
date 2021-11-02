import 'package:flutter/material.dart';
import 'package:food_app/screens/fooditems/bawang.dart';
import 'package:food_app/screens/fooditems/canai.dart';
import 'package:food_app/screens/fooditems/telur.dart';
import 'package:google_fonts/google_fonts.dart';

class Pelita extends StatelessWidget {
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
                          image: AssetImage("assets/images/pelita1.jpg")),
                    ),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey.withOpacity(0.8),
                            Colors.white.withOpacity(0.8),
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
                          "Nasi Kandar Pelita \n(Lotus's E-gate)",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: Text(
                          " Pelita symbolizes the brightness and light shed into the management and administrative aspects of our business.",
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
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Roti Canai",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton.icon(
                                icon: Icon(Icons.price_check),
                                label: Text('Check Price'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Canai()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/roti1.jpg",
                              height: 150),
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
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Roti Telur Bawang",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton.icon(
                                icon: Icon(Icons.price_check),
                                label: Text('Check Price'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bawang()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/roti2.jpg",
                              height: 150),
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
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerLeft,
                          height: 150,
                          width: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Roti Telur",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton.icon(
                                icon: Icon(Icons.price_check),
                                label: Text('Check Price'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Telur()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/roti3.jpg",
                              height: 150),
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
