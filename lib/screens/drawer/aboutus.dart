import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About Us'),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Our Mission',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 35,
                            fontWeight: FontWeight.bold))),
              ),
              Container(
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500 when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    height: 1.5,
                    color: Colors.black,
                    fontSize: 15,
                  )),
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
