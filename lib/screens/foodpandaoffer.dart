import 'package:flutter/material.dart';
import 'package:food_app/components/Foodpandainfo.dart';

class Foodpandaoffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Image.asset("assets/images/foodpanda.jpg"),
                Container(
                  // alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Expanded(child: Foodpandainfo()),
          ],
        ),
      ),
    );
  }
}
