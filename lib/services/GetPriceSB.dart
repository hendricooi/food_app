import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetPriceSB extends StatelessWidget {
  late String option,
      option2,
      option3,
      first = "",
      second = "",
      third = "",
      optionl,
      option2l,
      option3l,
      firstl = "",
      secondl = "",
      thirdl = "",
      deli,
      deli2,
      deli3,
      delivery = "",
      delivery2 = "",
      delivery3 = "";
  int documents;

  GetPriceSB(this.documents, this.option, this.option2, this.option3, this.deli,
      this.deli2, this.deli3, this.optionl, this.option2l, this.option3l);
  final Stream<QuerySnapshot> price =
      FirebaseFirestore.instance.collection('price').snapshots();

  @override
  Widget build(BuildContext context) {
    double value,
        value2,
        value3,
        valuel,
        value2l,
        value3l,
        delivalue,
        delivalue2,
        delivalue3;
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
                valuel = double.parse('${data.docs[documents][optionl]}');
                value2l = double.parse('${data.docs[documents][option2l]}');
                value3l = double.parse('${data.docs[documents][option3l]}');

                if (value > value2) {
                  if (value > value3) {
                    if (value2 > value3) {
                      if (value3 == 0) {
                        first = value2.toStringAsFixed(2);
                        image = "assets/images/foodpanda1.png";
                        firstl = value2l.toStringAsFixed(2);
                        delivery = delivalue2.toStringAsFixed(2);
                        second = value.toStringAsFixed(2);
                        image2 = "assets/images/grabfood.jpg";
                        secondl = valuel.toStringAsFixed(2);
                        delivery2 = delivalue.toStringAsFixed(2);
                        third = value3.toStringAsFixed(2);
                        thirdl = value3l.toStringAsFixed(2);
                        delivery3 = delivalue3.toStringAsFixed(2);
                        image3 = "assets/images/delivereatnot.jpg";
                      } else {
                        first = value3.toStringAsFixed(2);
                        delivery = delivalue3.toStringAsFixed(2);
                        firstl = value3l.toStringAsFixed(2);
                        image = "assets/images/delivereat.png";
                        second = value2.toStringAsFixed(2);
                        secondl = value2l.toStringAsFixed(2);
                        delivery2 = delivalue2.toStringAsFixed(2);
                        image2 = "assets/images/foodpanda1.png";
                        third = value.toStringAsFixed(2);
                        firstl = value3l.toStringAsFixed(2);
                        image3 = "assets/images/grabfood.jpg";
                        delivery3 = delivalue.toStringAsFixed(2);
                      }
                    } else if (value2 == 0) {
                      first = value3.toStringAsFixed(2);
                      image = "assets/images/delivereat.png";
                      firstl = value3l.toStringAsFixed(2);
                      delivery = delivalue3.toStringAsFixed(2);
                      second = value.toStringAsFixed(2);
                      secondl = valuel.toStringAsFixed(2);
                      image2 = "assets/images/grabfood.jpg";
                      delivery2 = delivalue.toStringAsFixed(2);
                      third = value2.toStringAsFixed(2);
                      thirdl = value2l.toStringAsFixed(2);
                      image3 = "assets/images/foodpandanot.png";
                      delivery3 = delivalue2.toStringAsFixed(2);
                    } else {
                      first = value2.toStringAsFixed(2);
                      image = "assets/images/foodpanda1.png";
                      firstl = value2l.toStringAsFixed(2);
                      delivery = delivalue2.toStringAsFixed(2);
                      second = value3.toStringAsFixed(2);
                      secondl = value3l.toStringAsFixed(2);
                      image2 = "assets/images/delivereat.png";
                      delivery2 = delivalue3.toStringAsFixed(2);
                      third = value.toStringAsFixed(2);
                      thirdl = valuel.toStringAsFixed(2);
                      image3 = "assets/images/grabfood.jpg";
                      delivery3 = delivalue.toStringAsFixed(2);
                    }
                  } else if (value2 == 0) {
                    first = value.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    firstl = valuel.toStringAsFixed(2);
                    delivery = delivalue.toStringAsFixed(2);
                    second = value3.toStringAsFixed(2);
                    secondl = value3l.toStringAsFixed(2);
                    image2 = "assets/images/delivereat.png";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    thirdl = value2l.toStringAsFixed(2);
                    image3 = "assets/images/foodpandanot.jpg";
                    delivery3 = delivalue2.toStringAsFixed(2);
                  } else {
                    first = value2.toStringAsFixed(2);
                    firstl = value2l.toStringAsFixed(2);
                    image = "assets/images/foodpanda1.png";
                    delivery = delivalue2.toStringAsFixed(2);
                    second = value.toStringAsFixed(2);
                    secondl = valuel.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue.toStringAsFixed(2);
                    third = value3.toStringAsFixed(2);
                    image3 = "assets/images/delivereat.png";
                    thirdl = value3l.toStringAsFixed(2);
                    delivery3 = delivalue3.toStringAsFixed(2);
                  }
                } else if (value2 > value3) {
                  if (value3 > value) {
                    if (value != 0) {
                      first = value.toStringAsFixed(2);
                      image = "assets/images/grabfood.jpg";
                      firstl = valuel.toStringAsFixed(2);
                      delivery = delivalue.toStringAsFixed(2);
                      second = value3.toStringAsFixed(2);
                      secondl = value3l.toStringAsFixed(2);
                      image2 = "assets/images/delivereat.png";
                      delivery2 = delivalue3.toStringAsFixed(2);
                      third = value2.toStringAsFixed(2);
                      thirdl = value2l.toStringAsFixed(2);
                      image3 = "assets/images/foodpanda1.png";
                      delivery = delivalue2.toStringAsFixed(2);
                    } else {
                      first = value3.toStringAsFixed(2);
                      image = "assets/images/delivereat.png";
                      firstl = value3l.toStringAsFixed(2);
                      delivery = delivalue3.toStringAsFixed(2);
                      second = value2.toStringAsFixed(2);
                      secondl = value2l.toStringAsFixed(2);
                      image2 = "assets/images/foodpanda1.png";
                      delivery2 = delivalue2.toStringAsFixed(2);
                      third = value.toStringAsFixed(2);
                      thirdl = valuel.toStringAsFixed(2);
                      image3 = "assets/images/grabfoodnot.jpg";
                      delivery3 = delivalue.toStringAsFixed(2);
                    }
                  } else if (value3 == 0) {
                    first = value.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    firstl = valuel.toStringAsFixed(2);
                    delivery = delivalue.toStringAsFixed(2);
                    second = value2.toStringAsFixed(2);
                    secondl = value2l.toStringAsFixed(2);
                    image2 = "assets/images/foodpanda1.png";
                    delivery2 = delivalue2.toStringAsFixed(2);
                    third = value3.toStringAsFixed(2);
                    thirdl = value3l.toStringAsFixed(2);
                    image3 = "assets/images/delivereatnot.jpg";
                    delivery3 = delivalue3.toStringAsFixed(2);
                  } else {
                    first = value3.toStringAsFixed(2);
                    image = "assets/images/delivereat.png";
                    firstl = value3l.toStringAsFixed(2);
                    delivery = delivalue3.toStringAsFixed(2);
                    second = value.toStringAsFixed(2);
                    secondl = valuel.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    thirdl = value2l.toStringAsFixed(2);
                    image3 = "assets/images/foodpanda1.png";
                    delivery3 = delivalue2.toStringAsFixed(2);
                  }
                } else {
                  first = value.toStringAsFixed(2);
                  image = "assets/images/grabfood.jpg";
                  firstl = valuel.toStringAsFixed(2);
                  delivery = delivalue.toStringAsFixed(2);
                  second = value2.toStringAsFixed(2);
                  secondl = value2l.toStringAsFixed(2);
                  image2 = "assets/images/foodpanda1.png";
                  delivery2 = delivalue2.toStringAsFixed(2);
                  third = value3.toStringAsFixed(2);
                  thirdl = value3l.toStringAsFixed(2);
                  image3 = "assets/images/delivereat.png";
                  delivery3 = delivalue3.toStringAsFixed(2);
                }
                if (value == 0) {
                  if (value2 > value3) {
                    first = value3.toStringAsFixed(2);
                    image = "assets/images/delivereat.png";
                    delivery = delivalue3.toStringAsFixed(2);
                    second = value2.toStringAsFixed(2);
                    image2 = "assets/images/foodpanda1.png";
                    delivery2 = delivalue2.toStringAsFixed(2);
                    third = value.toStringAsFixed(2);
                    image3 = "assets/images/grabfoodnot.jpg";
                    delivery3 = delivalue.toStringAsFixed(2);
                  } else {
                    first = value2.toStringAsFixed(2);
                    image = "assets/images/foodpanda1.png";
                    delivery = delivalue2.toStringAsFixed(2);
                    second = value3.toStringAsFixed(2);
                    image2 = "assets/images/delivereat.png";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value.toStringAsFixed(2);
                    image3 = "assets/images/grabfoodnot.jpg";
                    delivery3 = delivalue.toStringAsFixed(2);
                  }
                }
                if (value3 == 0) {
                  if (value > value2) {
                    first = value2.toStringAsFixed(2);
                    image = "assets/images/foodpanda1.png";
                    delivery = delivalue2.toStringAsFixed(2);
                    second = value.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value3.toStringAsFixed(2);
                    image3 = "assets/images/delivereatnot.jpg";
                    delivery3 = delivalue3.toStringAsFixed(2);
                  } else {
                    first = value.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    delivery = delivalue.toStringAsFixed(2);
                    second = value2.toStringAsFixed(2);
                    image2 = "assets/images/foodpanda1.png";
                    delivery2 = delivalue2.toStringAsFixed(2);
                    third = value3.toStringAsFixed(2);
                    image3 = "assets/images/delivereatnot.jpg";
                    delivery3 = delivalue3.toStringAsFixed(2);
                  }
                }
                if (value2 == 0) {
                  if (value > value3) {
                    first = value3.toStringAsFixed(2);
                    image = "assets/images/delivereat.png";
                    delivery = delivalue3.toStringAsFixed(2);
                    second = value.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    image3 = "assets/images/foodpandanot.jpg";
                    delivery3 = delivalue2.toStringAsFixed(2);
                  } else {
                    first = value.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    delivery = delivalue.toStringAsFixed(2);
                    second = value3.toStringAsFixed(2);
                    image2 = "assets/images/delivereat.png";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    image3 = "assets/images/foodpandanot.jpg";
                    delivery3 = delivalue2.toStringAsFixed(2);
                  }
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
                                        "Price ",
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
                                        "Grande - RM $first \n     Venti - RM $firstl",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: const EdgeInsets.only(left: 30),
                                  child: Text(
                                    "Delivery fee = RM$delivery ",
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
                                        "Price",
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
                                        "Grande - RM $second \n     Venti - RM $secondl",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
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
                                        "Price",
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
                                        "Grande - RM $third \n     Venti - RM $thirdl",
                                        style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
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
