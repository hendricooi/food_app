import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';

class McChicken extends StatefulWidget {
  @override
  State<McChicken> createState() => _McChickenState();
}

class _McChickenState extends State<McChicken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("McChicken"),
        ),
        body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetPrice(1, "grabMcC", "pandaMcC", "deliverMcC"),
      ],
    );
  }
}
