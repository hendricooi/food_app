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
        body: GetPrice()
        //  Center(
        //   child: StreamBuilder(
        //     stream: FirebaseFirestore.instance.collection('food').snapshots(),
        //     builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        //       if (!snapshot.hasData) {
        //         return Center(child: Text("Loading"));
        //       }
        //       return ListView(
        //         children: snapshot.data!.docs.map((food) {
        //           return Column(
        //             children: [
        //               ListTile(
        //                 title: Text(food['price']),
        //               ),
        //               ListTile(
        //                 title: Text(food['grabprice']),
        //               )
        //             ],
        //           );
        //         }).toList(),
        //       );
        //     },
        //   ),
        // ),
        );
  }
}
