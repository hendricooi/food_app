import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';
import 'package:food_app/services/GetPriceSB.dart';
import 'package:food_app/services/GetPricedrinks.dart';
import 'package:google_fonts/google_fonts.dart';

class JavaChip extends StatefulWidget {
  @override
  State<JavaChip> createState() => _JavaChip();
}

class _JavaChip extends State<JavaChip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Java Chip Frappuccino"),
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
                  image: AssetImage("assets/images/javachip.jpg")),
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
                17,
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
