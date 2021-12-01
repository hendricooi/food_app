import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/services/User.dart';

class AuthService {
  final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;
  User? _userfromFirebase(auth.User? user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User?>? get user {
    return _auth.authStateChanges().map(_userfromFirebase);
  }

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      Fluttertoast.showToast(
          msg: "Successfully log in",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 14.0);
      return _userfromFirebase(credential.user);
    } catch (error) {
      Fluttertoast.showToast(
          msg: error.toString(),
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 14.0);

      // AlertDialog(
      //   title: const Text('AlertDialog Title'),
      //   content: const Text('AlertDialog description'),
      //   actions: <Widget>[
      //     TextButton(
      //       onPressed: () => new CircularProgressIndicator(),
      //       child: const Text('Cancel'),
      //     ),
      //   ],
      // );
      print(error.toString());
    }
  }

  Future<User?> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      Fluttertoast.showToast(
          msg: "Account created",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 14.0);
      return _userfromFirebase(credential.user);
    } catch (e) {
      Fluttertoast.showToast(
          msg: e.toString(),
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.blueGrey,
          textColor: Colors.white,
          fontSize: 14.0);
      // AlertDialog(
      //   title: const Text('AlertDialog Title'),
      //   content: const Text('AlertDialog description'),
      //   actions: <Widget>[
      //     TextButton(
      //       onPressed: () => new CircularProgressIndicator(),
      //       child: const Text('Cancel'),
      //     ),
      //   ],
      // );
      print(e.toString());
    }
  }

  Future<void> signOut() async {
    return await _auth.signOut();
  }
}
