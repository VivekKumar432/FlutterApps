import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy_clone/screens/prePages.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _UserSplashState();
}

class _UserSplashState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const PrePageView())));

    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 180,
            ),
            Center(child: Image.asset("assets/skillrisers-logo.png")),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: AutoSizeText("Skill risers",
                  maxLines: 2,
                  style: GoogleFonts.lato(
                      fontSize: 40.0,
                      color: const Color.fromARGB(255, 71, 170, 251))),
            ),
            const Center(
                child: CircularProgressIndicator(
              strokeWidth: 3.0,
            ))
          ],
        ),
      ),
    );
  }
}
