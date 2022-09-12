import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 4.1,
            ),
            Center(
              child: Image.asset("assets/learning-person.png"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6.2,
            ),
            Center(
              child: AutoSizeText("Go at Your Own Pace",
                  maxLines: 2,
                  style: GoogleFonts.lato(fontSize: 30.0, color: Colors.white)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            AutoSizeText("Lifetime access to purchased courses,",
                maxLines: 1,
                style: GoogleFonts.lato(fontSize: 18.0, color: Colors.white)),
            AutoSizeText("anytime, anywhere",
                maxLines: 1,
                style: GoogleFonts.lato(fontSize: 18.0, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
