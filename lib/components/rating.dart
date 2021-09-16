import 'package:flutter/material.dart';

class rating extends StatelessWidget {
  String image;

  rating(
    this.image,
  );
  @override
  Widget build(BuildContext context) {
    return Container(height: 20, width: 20, child: Image.asset(image));
  }
}
