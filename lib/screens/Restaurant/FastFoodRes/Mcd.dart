import 'package:flutter/material.dart';
import 'package:food_app/components/ratingres/ratingview.dart';
import 'package:food_app/screens/fooditems/GCB.dart';
import 'package:food_app/screens/fooditems/mcchicken.dart';
import 'package:food_app/screens/fooditems/spicy.dart';
import 'package:google_fonts/google_fonts.dart';

class Mcd extends StatelessWidget {
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
                          image: AssetImage("assets/images/mcd1.jpg")),
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
                        child: Text("McDonald's Malaysia \n(Caltex Farlim)",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            textAlign: TextAlign.center),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        alignment: Alignment.center,
                        child: Text(
                          "Burgers, fries, nuggets or just a drink. Good food, great time. 100% HALAL Certified.",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold)),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.reviews,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            openRatingDialog(context);
                          },
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.topRight,
                          child: Text(
                            "Rate us!",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          )),
                    ],
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
                                "McChicken",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "Your favorite chicken burger cooked to golden perfection topped with lettuce and special sauce.",
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
                                        builder: (context) => McChicken()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/mcjiken.jpg",
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
                                "Spicy Chicken McDeluxe™",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "Specially marinated whole chicken thigh meat with a delightfully crispy coat, layered with fresh lettuce and special sauce in a corn meal bun.",
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
                                        builder: (context) => Spicy()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/spicy.jpg",
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
                                "GCB",
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "Topped with chargrilled sauce and crunchy iceberg lettuce, tucked between a long toasted sesame bun.",
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
                                        builder: (context) => GCB()),
                                  );
                                },
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 130,
                          child: Image.asset("assets/images/gcb.jpg",
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

  openRatingDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: RatingView(),
          );
        });
  }
}
