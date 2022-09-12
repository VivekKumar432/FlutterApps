import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy_clone/screens/coursePage.dart';
import 'package:udemy_clone/screens/preHomepages/pageOne.dart';
import 'package:udemy_clone/screens/preHomepages/pageThree.dart';
import 'package:udemy_clone/screens/preHomepages/pageTwo.dart';

class PrePageView extends StatefulWidget {
  const PrePageView({Key? key}) : super(key: key);

  @override
  State<PrePageView> createState() => _UserPageViewState();
}

class _UserPageViewState extends State<PrePageView> {
  //bool browseLoad = false;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      PageView(
        children: const [PageOne(), PageTwo(), PageThree()],
      ),
      Positioned(
        bottom: MediaQuery.of(context).size.height / 30,
        left: MediaQuery.of(context).size.width * 0.05,
        right: MediaQuery.of(context).size.width * 0.05,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 15,
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
            ),
            onPressed: () {
              //browseLoad = true;
              Timer(const Duration(seconds: 1), () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const MyCoursePage()));
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AutoSizeText("Browse",
                    maxLines: 1,
                    style: GoogleFonts.lato(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
