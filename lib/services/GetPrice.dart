import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetPrice extends StatelessWidget {
  late String option,
      option2,
      option3,
      first = "",
      second = "",
      third = "",
      description = "";
  int documents;

  GetPrice(
    this.documents,
    this.option,
    this.option2,
    this.option3,
  );
  final Stream<QuerySnapshot> price =
      FirebaseFirestore.instance.collection('price').snapshots();

  @override
  Widget build(BuildContext context) {
    double value, value2, value3;
    String image = "", image2 = "", image3 = "";
    return Container(
      child: StreamBuilder<QuerySnapshot>(
          stream: price,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text("Something went wrong.");
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Text('Loading');
            }

            final data = snapshot.requireData;

            return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                value = double.parse('${data.docs[documents][option]}');
                value2 = double.parse('${data.docs[documents][option2]}');
                value3 = double.parse('${data.docs[documents][option3]}');
                if (value > value2) {
                  if (value > value3) {
                    if (value2 > value3) {
                      first = value3.toString();
                      image = "assets/images/delivereat.png";
                      second = value2.toString();
                      image2 = "assets/images/foodpanda1.png";
                      third = value.toString();
                      image3 = "assets/images/grabfood.jpg";
                    } else {
                      first = value2.toString();
                      image = "assets/images/foodpanda1.png";
                      second = value3.toString();
                      image2 = "assets/images/delivereat.png";
                      third = value.toString();
                      image3 = "assets/images/grabfood.jpg";
                    }
                  } else {
                    first = value2.toString();
                    image = "assets/images/foodpanda1.png";
                    second = value.toString();
                    image2 = "assets/images/grabfood.jpg";
                    third = value3.toString();
                    image3 = "assets/images/delivereat.png";
                  }
                } else if (value2 > value3) {
                  if (value3 > value) {
                    first = value.toString();
                    image = "assets/images/grabfood.jpg";
                    second = value3.toString();
                    image2 = "assets/images/delivereat.png";
                    third = value2.toString();
                    image3 = "assets/images/foodpanda1.png";
                  } else {
                    first = value3.toString();
                    image = "assets/images/delivereat.png";
                    second = value.toString();
                    image2 = "assets/images/grabfood.jpg";
                    third = value2.toString();
                    image3 = "assets/images/foodpanda1.png";
                  }
                } else {
                  first = value.toString();
                  image = "assets/images/grabfood.jpg";
                  second = value2.toString();
                  image2 = "assets/images/foodpanda1.png";
                  third = value3.toString();
                  image3 = "assets/images/delivereat.png";
                }

                return Column(
                  children: [
                    Row(
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
                                Container(
                                  height: 130,
                                  child: Image.asset(image,
                                      height: 150, fit: BoxFit.fill),
                                )
                              ]),
                        ),
                        Column(
                          children: [
                            Text(
                              "Order From",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Container(
                                height: 50,
                                child: Text('RM $first ',
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    )))),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  image2,
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(color: Colors.blue),
                            height: 50,
                            child: Text('RM $second ',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )))),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Image.asset(
                                  image3,
                                  width: 80,
                                  height: 80,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(color: Colors.blue),
                            height: 50,
                            child: Text('RM $third ',
                                style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                )))),
                      ],
                    ),
                  ],
                );
              },
              itemCount: 1,
            );
          }),
    );
  }
}
