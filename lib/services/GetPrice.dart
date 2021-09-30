import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetPrice extends StatelessWidget {
  final Stream<QuerySnapshot> users =
      FirebaseFirestore.instance.collection('food').snapshots();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
          stream: users,
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
              itemBuilder: (context, index) {
                return Text(
                    'Foodpanda: ${data.docs[index]['price']}, \nGrab: ${data.docs[index]['grabprice']}',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    )));
              },
              itemCount: data.size,
            );
          }),
    );
  }
}
