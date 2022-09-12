import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.2,
            ),
            Center(
              child: Image.asset(
                "assets/writing-person.png",
                height: 250,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6,
            ),
            Center(
              child: AutoSizeText("Learn from the Best",
                  maxLines: 2,
                  style: GoogleFonts.lato(fontSize: 30.0, color: Colors.white)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            AutoSizeText("Approachable expert-instructors,",
                maxLines: 1,
                style: GoogleFonts.lato(fontSize: 18.0, color: Colors.white)),
            AutoSizeText("vetterd by 35 million learners",
                maxLines: 1,
                style: GoogleFonts.lato(fontSize: 18.0, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
