import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class offerdetails extends StatelessWidget {
  String image, title, description;

  offerdetails(
    this.image,
    this.title,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              image,
              height: 30,
              width: 30,
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            Text(title,
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold))),
            Padding(padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5)),
            Image.asset(
              image,
              height: 30,
              width: 30,
            ),
          ],
        ),
        Text(
          description,
          style: GoogleFonts.montserrat(
              textStyle: TextStyle(
            color: Colors.black,
            fontSize: 12,
            height: 1.3,
          )),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
