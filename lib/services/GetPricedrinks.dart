import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class GetPricedrinks extends StatefulWidget {
  late String option,
      option2,
      option3,
      optionl,
      option2l,
      option3l,
      deli,
      deli2,
      deli3,
      foodname,
      picture;
  int documents;

  GetPricedrinks(
      this.documents,
      this.option,
      this.option2,
      this.option3,
      this.deli,
      this.deli2,
      this.deli3,
      this.optionl,
      this.option2l,
      this.option3l,
      this.foodname,
      this.picture);
  @override
  State<GetPricedrinks> createState() => _GetPricedrinksState();
}

class _GetPricedrinksState extends State<GetPricedrinks> {
  final Stream<QuerySnapshot> price =
      FirebaseFirestore.instance.collection('price').snapshots();

  bool _isLiked = false,
      _isLiked2 = false,
      _isLiked3 = false,
      _isLikedL = false,
      _isLiked2L = false,
      _isLiked3L = false;
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
    String image = "",
        image2 = "",
        image3 = "",
        name = "",
        company = "",
        company2 = "",
        company3 = "",
        delivery = "",
        delivery2 = "",
        delivery3 = "",
        first = "",
        second = "",
        third = "",
        firstl = "",
        secondl = "",
        thirdl = "",
        picturee = "";

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
                name = data.docs[widget.documents][widget.foodname];
                picturee = data.docs[widget.documents][widget.picture];
                value = double.parse(
                    '${data.docs[widget.documents][widget.option]}');
                value2 = double.parse(
                    '${data.docs[widget.documents][widget.option2]}');
                value3 = double.parse(
                    '${data.docs[widget.documents][widget.option3]}');
                delivalue =
                    double.parse('${data.docs[widget.documents][widget.deli]}');
                delivalue2 = double.parse(
                    '${data.docs[widget.documents][widget.deli2]}');
                delivalue3 = double.parse(
                    '${data.docs[widget.documents][widget.deli3]}');
                valuel = double.parse(
                    '${data.docs[widget.documents][widget.optionl]}');
                value2l = double.parse(
                    '${data.docs[widget.documents][widget.option2l]}');
                value3l = double.parse(
                    '${data.docs[widget.documents][widget.option3l]}');

                if (value > value2) {
                  if (value > value3) {
                    if (value2 > value3) {
                      if (value3 == 0) {
                        first = value2.toStringAsFixed(2);
                        image = "assets/images/foodpanda1.png";
                        firstl = value2l.toStringAsFixed(2);
                        delivery = delivalue2.toStringAsFixed(2);
                        company = "FoodPanda";
                        second = value.toStringAsFixed(2);
                        image2 = "assets/images/grabfood.jpg";
                        secondl = valuel.toStringAsFixed(2);
                        delivery2 = delivalue.toStringAsFixed(2);
                        company2 = "GrabFood";
                        third = value3.toStringAsFixed(2);
                        thirdl = value3l.toStringAsFixed(2);
                        delivery3 = delivalue3.toStringAsFixed(2);
                        image3 = "assets/images/delivereatnot.jpg";
                        company3 = "DeliverEat";
                      } else {
                        first = value3.toStringAsFixed(2);
                        delivery = delivalue3.toStringAsFixed(2);
                        firstl = value3l.toStringAsFixed(2);
                        image = "assets/images/delivereat.png";
                        company = "DeliverEat";
                        second = value2.toStringAsFixed(2);
                        secondl = value2l.toStringAsFixed(2);
                        delivery2 = delivalue2.toStringAsFixed(2);
                        image2 = "assets/images/foodpanda1.png";
                        company2 = "FoodPanda";
                        third = value.toStringAsFixed(2);
                        firstl = value3l.toStringAsFixed(2);
                        image3 = "assets/images/grabfood.jpg";
                        delivery3 = delivalue.toStringAsFixed(2);
                        company3 = "GrabFood";
                      }
                    } else if (value2 == 0) {
                      first = value3.toStringAsFixed(2);
                      image = "assets/images/delivereat.png";
                      firstl = value3l.toStringAsFixed(2);
                      delivery = delivalue3.toStringAsFixed(2);
                      company = "DeliverEat";
                      second = value.toStringAsFixed(2);
                      secondl = valuel.toStringAsFixed(2);
                      image2 = "assets/images/grabfood.jpg";
                      delivery2 = delivalue.toStringAsFixed(2);
                      company2 = "GrabFood";
                      third = value2.toStringAsFixed(2);
                      thirdl = value2l.toStringAsFixed(2);
                      image3 = "assets/images/foodpandanot.png";
                      delivery3 = delivalue2.toStringAsFixed(2);
                      company3 = "FoodPanda";
                    } else {
                      first = value2.toStringAsFixed(2);
                      image = "assets/images/foodpanda1.png";
                      firstl = value2l.toStringAsFixed(2);
                      delivery = delivalue2.toStringAsFixed(2);
                      company = "FoodPanda";
                      second = value3.toStringAsFixed(2);
                      secondl = value3l.toStringAsFixed(2);
                      image2 = "assets/images/delivereat.png";
                      company2 = "DeliverEat";
                      delivery2 = delivalue3.toStringAsFixed(2);
                      third = value.toStringAsFixed(2);
                      thirdl = valuel.toStringAsFixed(2);
                      image3 = "assets/images/grabfood.jpg";
                      delivery3 = delivalue.toStringAsFixed(2);
                      company3 = "GrabFood";
                    }
                  } else if (value2 == 0) {
                    first = value.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    firstl = valuel.toStringAsFixed(2);
                    delivery = delivalue.toStringAsFixed(2);
                    company = "GrabFood";
                    second = value3.toStringAsFixed(2);
                    secondl = value3l.toStringAsFixed(2);
                    image2 = "assets/images/delivereat.png";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    company2 = "DeliverEat";
                    third = value2.toStringAsFixed(2);
                    thirdl = value2l.toStringAsFixed(2);
                    image3 = "assets/images/foodpandanot.jpg";
                    delivery3 = delivalue2.toStringAsFixed(2);
                    company3 = "FoodPanda";
                  } else {
                    first = value2.toStringAsFixed(2);
                    firstl = value2l.toStringAsFixed(2);
                    image = "assets/images/foodpanda1.png";
                    company = "FoodPanda";
                    delivery = delivalue2.toStringAsFixed(2);
                    second = value.toStringAsFixed(2);
                    secondl = valuel.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    delivery2 = delivalue.toStringAsFixed(2);
                    company2 = "GrabFood";
                    third = value3.toStringAsFixed(2);
                    image3 = "assets/images/delivereat.png";
                    thirdl = value3l.toStringAsFixed(2);
                    delivery3 = delivalue3.toStringAsFixed(2);
                    company3 = "DeliverEat";
                  }
                } else if (value2 > value3) {
                  if (value3 > value) {
                    if (value != 0) {
                      first = value.toStringAsFixed(2);
                      image = "assets/images/grabfood.jpg";
                      firstl = valuel.toStringAsFixed(2);
                      delivery = delivalue.toStringAsFixed(2);
                      company = "GrabFood";
                      second = value3.toStringAsFixed(2);
                      secondl = value3l.toStringAsFixed(2);
                      image2 = "assets/images/delivereat.png";
                      company2 = "DeliverEat";
                      delivery2 = delivalue3.toStringAsFixed(2);
                      third = value2.toStringAsFixed(2);
                      thirdl = value2l.toStringAsFixed(2);
                      image3 = "assets/images/foodpanda1.png";
                      company3 = "FoodPanda";
                      delivery = delivalue2.toStringAsFixed(2);
                    } else {
                      first = value3.toStringAsFixed(2);
                      image = "assets/images/delivereat.png";
                      firstl = value3l.toStringAsFixed(2);
                      company = "DeliverEat";
                      delivery = delivalue3.toStringAsFixed(2);
                      second = value2.toStringAsFixed(2);
                      secondl = value2l.toStringAsFixed(2);
                      image2 = "assets/images/foodpanda1.png";
                      company2 = "FoodPanda";
                      delivery2 = delivalue2.toStringAsFixed(2);
                      third = value.toStringAsFixed(2);
                      thirdl = valuel.toStringAsFixed(2);
                      image3 = "assets/images/grabfoodnot.jpg";
                      delivery3 = delivalue.toStringAsFixed(2);
                      company = "GrabFood";
                    }
                  } else if (value3 == 0) {
                    first = value.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    firstl = valuel.toStringAsFixed(2);
                    delivery = delivalue.toStringAsFixed(2);
                    company = "GrabFood";
                    second = value2.toStringAsFixed(2);
                    secondl = value2l.toStringAsFixed(2);
                    image2 = "assets/images/foodpanda1.png";
                    delivery2 = delivalue2.toStringAsFixed(2);
                    company2 = "FoodPanda";
                    third = value3.toStringAsFixed(2);
                    thirdl = value3l.toStringAsFixed(2);
                    image3 = "assets/images/delivereatnot.jpg";
                    delivery3 = delivalue3.toStringAsFixed(2);
                    company3 = "DeliverEat";
                  } else {
                    first = value3.toStringAsFixed(2);
                    image = "assets/images/delivereat.png";
                    firstl = value3l.toStringAsFixed(2);
                    delivery = delivalue3.toStringAsFixed(2);
                    company = "DeliverEat";
                    second = value.toStringAsFixed(2);
                    secondl = valuel.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    company2 = "GrabFood";
                    delivery2 = delivalue.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    thirdl = value2l.toStringAsFixed(2);
                    image3 = "assets/images/foodpanda1.png";
                    delivery3 = delivalue2.toStringAsFixed(2);
                    company3 = "FoodPanda";
                  }
                } else {
                  first = value.toStringAsFixed(2);
                  image = "assets/images/grabfood.jpg";
                  firstl = valuel.toStringAsFixed(2);
                  delivery = delivalue.toStringAsFixed(2);
                  company = "GrabFood";
                  second = value2.toStringAsFixed(2);
                  secondl = value2l.toStringAsFixed(2);
                  image2 = "assets/images/foodpanda1.png";
                  company2 = "FoodPanda";
                  delivery2 = delivalue2.toStringAsFixed(2);
                  third = value3.toStringAsFixed(2);
                  thirdl = value3l.toStringAsFixed(2);
                  image3 = "assets/images/delivereat.png";
                  delivery3 = delivalue3.toStringAsFixed(2);
                  company3 = "DeliverEat";
                }
                if (value == 0) {
                  if (value2 > value3) {
                    first = value3.toStringAsFixed(2);
                    firstl = value3.toStringAsFixed(2);
                    image = "assets/images/delivereat.png";
                    delivery = delivalue3.toStringAsFixed(2);
                    company = "DeliverEat";
                    second = value2.toStringAsFixed(2);
                    secondl = value2l.toStringAsFixed(2);
                    image2 = "assets/images/foodpanda1.png";
                    company2 = "FoodPanda";
                    delivery2 = delivalue2.toStringAsFixed(2);
                    third = value.toStringAsFixed(2);
                    image3 = "assets/images/grabfoodnot.jpg";
                    thirdl = valuel.toStringAsFixed(2);
                    delivery3 = delivalue.toStringAsFixed(2);
                    company3 = "GrabFood";
                  } else {
                    first = value2.toStringAsFixed(2);
                    image = "assets/images/foodpanda1.png";
                    firstl = value2l.toStringAsFixed(2);
                    delivery = delivalue2.toStringAsFixed(2);
                    company = "FoodPanda";
                    second = value3.toStringAsFixed(2);
                    secondl = value3l.toStringAsFixed(2);
                    image2 = "assets/images/delivereat.png";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    company2 = "DeliverEat";
                    third = value.toStringAsFixed(2);
                    thirdl = valuel.toStringAsFixed(2);
                    image3 = "assets/images/grabfoodnot.jpg";
                    delivery3 = delivalue.toStringAsFixed(2);
                    company3 = "GrabFood";
                  }
                }
                if (value3 == 0) {
                  if (value > value2) {
                    first = value2.toStringAsFixed(2);
                    firstl = value2l.toStringAsFixed(2);
                    image = "assets/images/foodpanda1.png";
                    delivery = delivalue2.toStringAsFixed(2);
                    company = "FoodPanda";
                    second = value.toStringAsFixed(2);
                    secondl = valuel.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    company2 = "GrabFood";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value3.toStringAsFixed(2);
                    thirdl = value3l.toStringAsFixed(2);
                    image3 = "assets/images/delivereatnot.jpg";
                    company3 = "DeliverEat";
                    delivery3 = delivalue3.toStringAsFixed(2);
                  } else {
                    first = value.toStringAsFixed(2);
                    firstl = valuel.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    company = "GrabFood";
                    delivery = delivalue.toStringAsFixed(2);
                    second = value2.toStringAsFixed(2);
                    secondl = value2l.toStringAsFixed(2);
                    image2 = "assets/images/foodpanda1.png";
                    company2 = "FoodPanda";
                    delivery2 = delivalue2.toStringAsFixed(2);
                    third = value3.toStringAsFixed(2);
                    thirdl = value3l.toStringAsFixed(2);
                    image3 = "assets/images/delivereatnot.jpg";
                    company3 = "DeliverEat";
                    delivery3 = delivalue3.toStringAsFixed(2);
                  }
                }
                if (value2 == 0) {
                  if (value > value3) {
                    first = value3.toStringAsFixed(2);
                    firstl = value3l.toStringAsFixed(2);
                    image = "assets/images/delivereat.png";
                    company = "DeliverEat";
                    delivery = delivalue3.toStringAsFixed(2);
                    second = value.toStringAsFixed(2);
                    secondl = valuel.toStringAsFixed(2);
                    image2 = "assets/images/grabfood.jpg";
                    company2 = "GrabFood";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    thirdl = value2l.toStringAsFixed(2);
                    image3 = "assets/images/foodpandanot.jpg";
                    delivery3 = delivalue2.toStringAsFixed(2);
                    company3 = "FoodPanda";
                  } else {
                    first = value.toStringAsFixed(2);
                    firstl = valuel.toStringAsFixed(2);
                    image = "assets/images/grabfood.jpg";
                    company = "GrabFood";
                    delivery = delivalue.toStringAsFixed(2);
                    second = value3.toStringAsFixed(2);
                    secondl = value3l.toStringAsFixed(2);
                    image2 = "assets/images/delivereat.png";
                    company2 = "DeliverEat";
                    delivery2 = delivalue3.toStringAsFixed(2);
                    third = value2.toStringAsFixed(2);
                    thirdl = value2l.toStringAsFixed(2);
                    image3 = "assets/images/foodpandanot.jpg";
                    company3 = "FoodPanda";
                    delivery3 = delivalue2.toStringAsFixed(2);
                  }
                }
                final FirebaseAuth auth = FirebaseAuth.instance;
                final User? user = auth.currentUser;
                final uid = user!.uid;
                CollectionReference favourite =
                    FirebaseFirestore.instance.collection('$uid');

                Future<void> addFavourite() async {
                  return favourite
                      .doc("$name")
                      .set({
                        "foodName": '$name',
                        "DeliCompany": '$company',
                        "Price": '$first',
                        "Delivery": '$delivery',
                        "Image": '$picturee',
                      })
                      .then((value) => print("User Added"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> removeFavourite() {
                  return favourite
                      .doc('$name')
                      .delete()
                      .then((value) => print("Fav removed"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> addFavouriteL() async {
                  return favourite
                      .doc("$name" + "L")
                      .set({
                        "foodName": '$name' + ' (L)',
                        "DeliCompany": '$company',
                        "Price": '$firstl',
                        "Delivery": '$delivery',
                        "Image": '$picturee',
                      })
                      .then((value) => print("User Added"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> removeFavouriteL() {
                  return favourite
                      .doc('$name' + "L")
                      .delete()
                      .then((value) => print("Fav removed"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> addFavourite2() async {
                  return favourite
                      .doc("$name" + "2")
                      .set({
                        "foodName": '$name',
                        "DeliCompany": '$company2',
                        "Price": '$second',
                        "Delivery": '$delivery2',
                        "Image": '$picturee'
                      })
                      .then((value) => print("User Added"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> removeFavourite2() {
                  return favourite
                      .doc("$name" + "2")
                      .delete()
                      .then((value) => print("Fav removed"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> addFavourite2L() async {
                  return favourite
                      .doc("$name" + "2L")
                      .set({
                        "foodName": '$name' + '(L)',
                        "DeliCompany": '$company2',
                        "Price": '$secondl',
                        "Delivery": '$delivery2',
                        "Image": '$picturee',
                      })
                      .then((value) => print("User Added"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> removeFavourite2L() {
                  return favourite
                      .doc('$name' + "2L")
                      .delete()
                      .then((value) => print("Fav removed"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> addFavourite3() async {
                  if (third == "0.00") {
                  } else {
                    return favourite
                        .doc("$name" + "3")
                        .set({
                          "foodName": '$name',
                          "DeliCompany": '$company3',
                          "Price": '$third',
                          "Delivery": '$delivery3',
                          "Image": '$picturee'
                        })
                        .then((value) => print("User Added"))
                        .catchError(
                            (error) => print("Failed to add user: $error"));
                  }
                }

                Future<void> removeFavourite3() async {
                  return favourite
                      .doc('$name' + '3')
                      .delete()
                      .then((value) => print("Fav removed"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> addFavourite3L() async {
                  return favourite
                      .doc("$name" + "3L")
                      .set({
                        "foodName": '$name' + "(L)",
                        "DeliCompany": '$company3',
                        "Price": '$thirdl',
                        "Delivery": '$delivery3',
                        "Image": '$picturee',
                      })
                      .then((value) => print("User Added"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
                }

                Future<void> removeFavourite3L() {
                  return favourite
                      .doc('$name' + "3L")
                      .delete()
                      .then((value) => print("Fav removed"))
                      .catchError(
                          (error) => print("Failed to add user: $error"));
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
                                      margin: const EdgeInsets.only(left: 10),
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
                                      margin: const EdgeInsets.only(left: 15),
                                      child: Text(
                                        "Regular - RM $first \n     Large - RM $firstl",
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
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Delivery fee = RM$delivery ",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text("Add to Favourite",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(_isLiked
                                            ? Icons.favorite
                                            : Icons.favorite_outline),
                                        color:
                                            _isLiked ? Colors.red : Colors.blue,
                                        onPressed: () {
                                          if (_isLiked == false) {
                                            addFavourite();
                                            setState(() {
                                              _isLiked = !_isLiked;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Added to favourites!")));
                                            });
                                          } else {
                                            removeFavourite();
                                            setState(() {
                                              _isLiked = !_isLiked;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Removed from favourites!")));
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Text("(R)",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(_isLikedL
                                            ? Icons.favorite
                                            : Icons.favorite_outline),
                                        color: _isLikedL
                                            ? Colors.red
                                            : Colors.blue,
                                        onPressed: () {
                                          if (_isLikedL == false) {
                                            addFavouriteL();
                                            setState(() {
                                              _isLikedL = !_isLikedL;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Added to favourites!")));
                                            });
                                          } else {
                                            removeFavouriteL();
                                            setState(() {
                                              _isLikedL = !_isLikedL;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Removed from favourites!")));
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Text("(L)",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
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
                                      margin: const EdgeInsets.only(left: 10),
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
                                        "Regular - RM $second \n     Large - RM $secondl",
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
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Delivery fee = RM$delivery2",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text("Add to Favourite",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(_isLiked2
                                            ? Icons.favorite
                                            : Icons.favorite_outline),
                                        color: _isLiked2
                                            ? Colors.red
                                            : Colors.blue,
                                        onPressed: () {
                                          if (_isLiked2 == false) {
                                            addFavourite2();
                                            setState(() {
                                              _isLiked2 = !_isLiked2;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Added to favourites!")));
                                            });
                                          } else {
                                            removeFavourite2();
                                            setState(() {
                                              _isLiked2 = !_isLiked2;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Removed from favourites!")));
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Text("(R)",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(_isLiked2L
                                            ? Icons.favorite
                                            : Icons.favorite_outline),
                                        color: _isLiked2L
                                            ? Colors.red
                                            : Colors.blue,
                                        onPressed: () {
                                          if (_isLiked2L == false) {
                                            addFavourite2L();
                                            setState(() {
                                              _isLiked2L = !_isLiked2L;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Added to favourites!")));
                                            });
                                          } else {
                                            removeFavourite2L();
                                            setState(() {
                                              _isLiked2L = !_isLiked2L;
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(SnackBar(
                                                      content: Text(
                                                          "Removed from favourites!")));
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Text("(L)",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
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
                                      margin: const EdgeInsets.only(left: 10),
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
                                        "Regular - RM $third \n     Large - RM $thirdl",
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
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Delivery fee = RM$delivery3",
                                    style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text("Add to Favourite",
                                          style: GoogleFonts.montserrat(
                                            textStyle: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(_isLiked3
                                            ? Icons.favorite
                                            : Icons.favorite_outline),
                                        color: _isLiked3
                                            ? Colors.red
                                            : Colors.blue,
                                        onPressed: () {
                                          if (_isLiked3 == false) {
                                            addFavourite3();
                                            setState(() {
                                              if (third == "0.00") {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Food option not available")));
                                              } else {
                                                _isLiked3 = !_isLiked3;
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Added to favourites!")));
                                              }
                                            });
                                          } else {
                                            removeFavourite3();
                                            setState(() {
                                              if (third == "0.00") {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Food option not available")));
                                              } else {
                                                _isLiked3 = !_isLiked3;
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Remove from favourites!")));
                                              }
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Text("(R)",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                    Container(
                                      child: IconButton(
                                        icon: Icon(_isLiked3L
                                            ? Icons.favorite
                                            : Icons.favorite_outline),
                                        color: _isLiked3L
                                            ? Colors.red
                                            : Colors.blue,
                                        onPressed: () {
                                          if (_isLiked3L == false) {
                                            addFavourite3L();
                                            setState(() {
                                              if (third == "0.00") {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Food option not available")));
                                              } else {
                                                _isLiked3L = !_isLiked3L;
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Added to favourites!")));
                                              }
                                            });
                                          } else {
                                            removeFavourite3L();
                                            setState(() {
                                              if (third == "0.00") {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Food option not available")));
                                              } else {
                                                _isLiked3L = !_isLiked3L;
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(SnackBar(
                                                        content: Text(
                                                            "Remove from favourites!")));
                                              }
                                            });
                                          }
                                        },
                                      ),
                                    ),
                                    Text("(L)",
                                        style: GoogleFonts.montserrat(
                                          textStyle: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  ],
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
