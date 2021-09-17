import 'package:flutter/material.dart';
import 'package:food_app/components/offerinfo/deliverinfo.dart';

class delivereatoffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[900],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Image.asset(
                  "assets/images/deliver.jpg",
                  height: 400,
                ),
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
            Expanded(child: deliverinfo()),
          ],
        ),
      ),
    );
  }
}
