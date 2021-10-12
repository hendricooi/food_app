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
      deli,
      deli2,
      deli3,
      delivery = "",
      delivery2 = "",
      delivery3 = "";
  int documents;

  GetPrice(this.documents, this.option, this.option2, this.option3, this.deli,
      this.deli2, this.deli3);
  final Stream<QuerySnapshot> price =
      FirebaseFirestore.instance.collection('price').snapshots();

  @override
  Widget build(BuildContext context) {
    double value, value2, value3, delivalue, delivalue2, delivalue3;
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
                delivalue = double.parse('${data.docs[documents][deli]}');
                delivalue2 = double.parse('${data.docs[documents][deli2]}');
                delivalue3 = double.parse('${data.docs[documents][deli3]}');

                if (value > value2) {
                  if (value > value3) {
                    if (value2 > value3) {
                      if (value3 == 0) {
                        first = value2.toString();
                        image = "assets/images/foodpanda1.png";
                        delivery = delivalue2.toString();
                        second = value.toString();
                        image2 = "assets/images/grabfood.jpg";
                        delivery2 = delivalue.toString();
                        third = value3.toString();
                        delivery3 = delivalue3.toString();
                        image3 = "assets/images/delivereat.png";
                      } else {
                        first = value3.toString();
                        delivery = delivalue3.toString();
                        image = "assets/images/delivereat.png";
                        second = value2.toString();
                        delivery2 = delivalue2.toString();
                        image2 = "assets/images/foodpanda1.png";
                        third = value.toString();
                        image3 = "assets/images/grabfood.jpg";
                        delivery3 = delivalue.toString();
                      }
                    } else if (value2 == 0) {
                      first = value3.toString();
                      image = "assets/images/delivereat.png";
                      delivery = delivalue3.toString();
                      second = value.toString();
                      image2 = "assets/images/grabfood.jpg";
                      delivery2 = delivalue.toString();
                      third = value2.toString();
                      image3 = "assets/images/foodpanda1.png";
                      delivery3 = delivalue2.toString();
                    } else {
                      first = value2.toString();
                      image = "assets/images/foodpanda1.png";
                      delivery = delivalue2.toString();
                      second = value3.toString();
                      image2 = "assets/images/delivereat.png";
                      delivery2 = delivalue3.toString();
                      third = value.toString();
                      image3 = "assets/images/grabfood.jpg";
                      delivery3 = delivalue.toString();
                    }
                  } else if (value2 == 0) {
                    first = value.toString();
                    image = "assets/images/grabfood.jpg";
                    delivery = delivalue2.toString();
                    second = value3.toString();
                    image2 = "assets/images/delivereat.png";
                    delivery2 = delivalue3.toString();
                    third = value2.toString();
                    image3 = "assets/images/foodpanda1.png";
                    delivery3 = delivalue.toString();
                  } else {
                    first = value2.toString();
                    image = "assets/images/foodpanda1.png";
                    delivery = delivalue2.toString();
                    second = value.toString();
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue.toString();
                    third = value3.toString();
                    image3 = "assets/images/delivereat.png";
                    delivery3 = delivalue3.toString();
                  }
                } else if (value2 > value3) {
                  if (value3 > value) {
                    if (value != 0) {
                      first = value.toString();
                      image = "assets/images/grabfood.jpg";
                      delivery = delivalue.toString();
                      second = value3.toString();
                      image2 = "assets/images/delivereat.png";
                      delivery2 = delivalue3.toString();
                      third = value2.toString();
                      image3 = "assets/images/foodpanda1.png";
                      delivery = delivalue2.toString();
                    } else {
                      first = value3.toString();
                      image = "assets/images/delivereat.png";
                      delivery = delivalue3.toString();
                      second = value2.toString();
                      image2 = "assets/images/foodpanda1.png";
                      delivery2 = delivalue2.toString();
                      third = value.toString();
                      image3 = "assets/images/grabfood.jpg";
                      delivery3 = delivalue.toString();
                    }
                  } else if (value3 == 0) {
                    first = value.toString();
                    image = "assets/images/grabfood.jpg";
                    delivery = delivalue.toString();
                    second = value2.toString();
                    image2 = "assets/images/foodpanda1.png";
                    delivery2 = delivalue2.toString();
                    third = value3.toString();
                    image3 = "assets/images/delivereat.png";
                    delivery3 = delivalue3.toString();
                  } else {
                    first = value3.toString();
                    image = "assets/images/delivereat.png";
                    delivery = delivalue3.toString();
                    second = value.toString();
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue.toString();
                    third = value2.toString();
                    image3 = "assets/images/foodpanda1.png";
                    delivery3 = delivalue2.toString();
                  }
                } else {
                  first = value.toString();
                  image = "assets/images/grabfood.jpg";
                  delivery = delivalue.toString();
                  second = value2.toString();
                  image2 = "assets/images/foodpanda1.png";
                  delivery2 = delivalue2.toString();
                  third = value3.toString();
                  image3 = "assets/images/delivereat.png";
                  delivery3 = delivalue3.toString();
                }

                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                color: Colors.black.withOpacity(0.10)),
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.10))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 130,
                            child: Image.asset(image,
                                height: 150, fit: BoxFit.fill),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            height: 150,
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        "Price from",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "RM $first",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Delivery fee = RM$delivery",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: TextButton.icon(
                                    icon: Icon(Icons.favorite_border_outlined),
                                    label: Text('Add to favourites'),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.10))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Container(
                                  height: 130,
                                  child: Image.asset(image2,
                                      height: 150, fit: BoxFit.fill),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            height: 150,
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        "Price from",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "RM $second",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Delivery fee = RM$delivery2",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: TextButton.icon(
                                    icon: Icon(Icons.favorite_border_outlined),
                                    label: Text('Add to favourites'),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                color: Colors.black.withOpacity(0.10))),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin:
                                EdgeInsets.only(top: 8, bottom: 8, right: 16),
                            child: Stack(
                              children: [
                                Container(
                                  height: 130,
                                  child: Image.asset(image3,
                                      height: 150, fit: BoxFit.fill),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            alignment: Alignment.centerLeft,
                            height: 150,
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        "Price from",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                        )),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: Text(
                                        "RM $third",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Delivery fee = RM$delivery3",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: TextButton.icon(
                                    icon: Icon(Icons.favorite_border_outlined),
                                    label: Text('Add to favourites'),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
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
