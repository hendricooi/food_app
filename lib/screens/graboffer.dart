import 'package:flutter/material.dart';
import 'package:food_app/components/Grabinfo.dart';

class Graboffer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[100],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Image.asset("assets/images/self.jpg"),
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
            Expanded(child: Grabinfo()),
          ],
        ),
      ),
    );
  }
}
