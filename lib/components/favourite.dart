import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/services/GetPrice.dart';
import 'package:google_fonts/google_fonts.dart';

class Favourite extends StatefulWidget {
  @override
  State<Favourite> createState() => _Favourite();
}

final FirebaseAuth auth = FirebaseAuth.instance;
final User? user = auth.currentUser;
final uid = user!.uid;

var test = FirebaseFirestore.instance.collection('$uid').snapshots();
CollectionReference favourite = FirebaseFirestore.instance.collection('$uid');
Future<void> deletefav(String favId) {
  return favourite.doc(favId).delete();
}

class _Favourite extends State<Favourite> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favourite"),
        ),
        body: Container(
            child: StreamBuilder(
          stream: test,
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView(
              children: snapshot.data!.docs.map((document) {
                return Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  height: MediaQuery.of(context).size.height / 5,
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom:
                              BorderSide(color: Colors.black.withOpacity(0.10)),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 8, top: 15),
                            height: 120,
                            width: 120,
                            child: Image.asset(
                              document['Image'],
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                          ),
                          Container(
                            width: 170,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Food Name:\n" +
                                  document['foodName'] +
                                  "\nCompany: " +
                                  document['DeliCompany'] +
                                  "\nFood Price: RM" +
                                  document['Price'] +
                                  "\nDelivery Fees: RM" +
                                  document['Delivery'],
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: new IconButton(
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  ),
                                  onPressed: () {
                                    FirebaseFirestore.instance
                                        .collection("$uid")
                                        .where(
                                          "foodName",
                                          isEqualTo: document["foodName"],
                                        )
                                        .where(
                                          "Price",
                                          isEqualTo: document["Price"],
                                        )
                                        .where(
                                          "DeliCompany",
                                          isEqualTo: document["DeliCompany"],
                                        )
                                        .get()
                                        .then((value) {
                                      value.docs.forEach((element) {
                                        FirebaseFirestore.instance
                                            .collection("$uid")
                                            .doc(element.id)
                                            .delete()
                                            .then((value) {
                                          print("Success!");
                                        });
                                      });
                                    });
                                  }),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ));
              }).toList(),
            );
          },
        )));
  }
}
