import 'package:flutter/material.dart';

class Foodoption extends StatelessWidget {
  String image, text;

  Foodoption(
    this.image,
    this.text,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 8,
              color: Color(0xFFB0CCE1).withOpacity(0.32),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(),
              child: Image.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.25,
                height: 80,
              ),
            ),
            Text(text, style: TextStyle(color: Colors.black)),
          ],
        ));
  }
}
