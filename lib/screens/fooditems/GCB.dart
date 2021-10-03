import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';

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
        body: GetPrice(0, "grabGCB", "foodpandaGCB", "deliverGCB"));
  }
}
