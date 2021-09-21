import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});
  final CollectionReference fooditems =
      FirebaseFirestore.instance.collection("items");

  Future updateUserData(String item, String price) async {
    return await fooditems.doc(uid).set({
      'item': item,
      'price': price,
    });
  }
}
