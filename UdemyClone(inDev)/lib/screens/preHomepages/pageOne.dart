import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/typing-art.webp",
                //color: Colors.white,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Center(
              child: AutoSizeText("Take Video Courses",
                  maxLines: 2,
                  style: GoogleFonts.lato(fontSize: 30.0, color: Colors.white)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 70,
            ),
            AutoSizeText("From cooking to coding",
                maxLines: 1,
                style: GoogleFonts.lato(fontSize: 18.0, color: Colors.white)),
            AutoSizeText("and everything in between",
                maxLines: 1,
                style: GoogleFonts.lato(fontSize: 18.0, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
