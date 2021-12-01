import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';
import 'package:food_app/services/GetPriceSB.dart';
import 'package:food_app/services/GetPricedrinks.dart';
import 'package:google_fonts/google_fonts.dart';

class CaramelFrap extends StatefulWidget {
  @override
  State<CaramelFrap> createState() => _CaramelFrap();
}

class _CaramelFrap extends State<CaramelFrap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Caramel Frappuccino"),
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        Stack(children: [
          Container(
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                  image: AssetImage("assets/images/caramel.jpg")),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 210,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: AssetImage("assets/images/watermark.PNG")),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
          ),
        ]),
        Container(
            child: GetPriceSB(
                10,
                "grab",
                "foodpanda",
                "deliver",
                "grabdeli",
                "pandadeli",
                "deliverdeli",
                "grabv",
                "pandav",
                "deliverv",
                "foodname",
                "image"))
      ]),
    );
  }
}
