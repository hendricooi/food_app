import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class RatingViewcr extends StatefulWidget {
  const RatingViewcr({Key? key}) : super(key: key);

  @override
  _RatingViewcrState createState() => _RatingViewcrState();
}

class _RatingViewcrState extends State<RatingViewcr> {
  var _ratingPageController = PageController();
  var _starPosition = 200.0;
  var _rating = 0;
  var _selectedChipIndex = 0;
  var _isMoreDetailActive = false;
  List<String> _choices = ['More food', 'More information', 'UI update'];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          //Thanks note
          Container(
            height: max(300, MediaQuery.of(context).size.height * 0.3),
            child: PageView(
              controller: _ratingPageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildThanksNote(),
                _causeOfRating(),
              ],
            ),
          ),
          // Done button
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.red,
                child: MaterialButton(
                  onPressed: () {
                    _hideDialog();
                    final FirebaseAuth auth = FirebaseAuth.instance;
                    final User? user = auth.currentUser;
                    final uid = user!.uid;
                    FirebaseFirestore.instance
                        .collection("rating")
                        .doc("Ratingcr")
                        .set({
                          "$uid": _rating,
                        })
                        .then((value) => print("User Added"))
                        .catchError(
                            (error) => print("Failed to add user: $error"));
                  },
                  child: Text("Done"),
                  textColor: Colors.white,
                ),
              )),
          //Skip button
          Positioned(
              right: 0,
              child: MaterialButton(
                  onPressed: () {
                    _hideDialog();
                  },
                  child: Text("Skip"))),
          //star rating
          AnimatedPositioned(
            top: _starPosition,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  5,
                  (index) => IconButton(
                      onPressed: () {
                        _ratingPageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn);
                        setState(() {
                          _starPosition = 20.0;
                          _rating = index + 1;
                        });
                      },
                      icon: index < _rating
                          ? Icon(
                              Icons.star,
                              size: 32,
                              color: Colors.red,
                            )
                          : Icon(Icons.star_border, size: 32))),
            ),
            duration: Duration(milliseconds: 300),
          ),
          //back button
          if (_isMoreDetailActive)
            Positioned(
                left: 0,
                top: 0,
                child: MaterialButton(
                  onPressed: () {
                    setState(() {
                      _isMoreDetailActive = false;
                    });
                  },
                  child: Icon(Icons.arrow_back_ios),
                ))
        ],
      ),
    );
  }

  _buildThanksNote() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Thank you for browsing Kim Poh",
          style: TextStyle(
            fontSize: 24,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text("We would like to get your feedback"),
      ],
    );
  }

  _causeOfRating() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Visibility(
          visible: !_isMoreDetailActive,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("What could be better?",
                  style: TextStyle(color: Colors.black)),
              Wrap(
                spacing: 8.0,
                alignment: WrapAlignment.center,
                children: List.generate(
                    3,
                    (index) => InkWell(
                          onTap: () {
                            setState(() {
                              _selectedChipIndex = index;
                            });
                          },
                          child: Chip(
                              backgroundColor: _selectedChipIndex == index
                                  ? Colors.red
                                  : Colors.grey[300],
                              label: Text(_choices[index])),
                        )),
              ),
              SizedBox(height: 16),
              InkWell(
                onTap: () {
                  setState(() {
                    _isMoreDetailActive = true;
                  });
                },
                child: Text(
                  "Want to tell us more?",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black),
                ),
              )
            ],
          ),
          replacement: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Tell us more"),
              Chip(
                label: Text(_choices[_selectedChipIndex]),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Write your review here...',
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: InputBorder.none),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _hideDialog() {
    if (Navigator.canPop(context)) Navigator.pop(context);
  }
}
