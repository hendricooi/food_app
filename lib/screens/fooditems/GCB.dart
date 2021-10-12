import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';
import 'package:google_fonts/google_fonts.dart';

class GCB extends StatefulWidget {
  const GCB({Key? key}) : super(key: key);

  @override
  State<GCB> createState() => _GCBState();
}

class _GCBState extends State<GCB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GCB"),
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
              image:
                  DecorationImage(image: AssetImage("assets/images/gcb.jpg")),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
            ),
          ),
          Column(
            children: [
              // Container(
              //   margin: EdgeInsets.only(top: 80),
              //   alignment: Alignment.center,
              //   child: Text(
              //     "GCB\n(McDonald's Malaysia)",
              //     style: GoogleFonts.roboto(
              //       textStyle: TextStyle(
              //           color: Colors.black,
              //           fontSize: 20,
              //           fontWeight: FontWeight.bold),
              //     ),
              //   ),
              // ),
            ],
          ),
        ]),
        Container(
            child: GetPrice(0, "grabGCB", "foodpandaGCB", "deliverGCB",
                "grabdeli", "pandadeli", "eatdeli"))
      ]),
    );
  }
}
