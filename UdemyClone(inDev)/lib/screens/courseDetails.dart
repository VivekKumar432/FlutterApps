import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy_clone/services/client.dart';

class MyCourseDetails extends StatefulWidget {
  const MyCourseDetails({super.key});
  // late bool isLoaded;
  // MyCourseDetails( this.isLoaded);

  @override
  State<MyCourseDetails> createState() => _MyCourseDetailsState();
}

class _MyCourseDetailsState extends State<MyCourseDetails> {
  final ApiClient _apiClient = ApiClient();
  Map<String, dynamic> map = {};
  Map<String, dynamic> courseDetails = {};
  bool isLoaded = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getDetails();
  }

  _getDetails() async {
    map = await _apiClient.getCourseDetails();
    courseDetails = map['course'];
    print("-----------------------------------------");
    print(courseDetails);
    print(courseDetails.length);

    setState(() {
      isLoaded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Visibility(
        replacement: const Center(child: CircularProgressIndicator()),
        visible: isLoaded,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Container(
            color: Colors.black,
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: Colors.white,
                        )),
                    const Spacer(),
                    const Icon(
                      Icons.share,
                      size: 25,
                      color: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.5,
                    child: Image.network(
                      courseDetails['trainer']['photo'],
                      fit: BoxFit.fill,
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 70,
                ),
                Container(
                  child: AutoSizeText(courseDetails["title"],
                      maxLines: 2,
                      style: GoogleFonts.lato(
                          fontSize: 25.0, color: Colors.white)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 120,
                ),
                AutoSizeText(courseDetails["subTitle"],
                    maxLines: 2,
                    style:
                        GoogleFonts.lato(fontSize: 18.0, color: Colors.grey)),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  color: const Color.fromARGB(255, 210, 197, 78),
                  child: AutoSizeText("Bestseller",
                      maxLines: 2,
                      style: GoogleFonts.lato(
                          fontSize: 15.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 120,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(textBaseline: TextBaseline.alphabetic, children: [
                        AutoSizeText("Created by ",
                            maxLines: 2,
                            style: GoogleFonts.lato(
                                fontSize: 15.0, color: Colors.grey)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 60,
                        ),
                        AutoSizeText(courseDetails['trainer']["fullName"],
                            maxLines: 2,
                            style: GoogleFonts.lato(
                                fontSize: 15.0,
                                color:
                                    const Color.fromARGB(255, 216, 148, 228))),
                      ]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 70,
                      ),
                      Row(textBaseline: TextBaseline.ideographic, children: [
                        const Icon(
                          Icons.brightness_auto_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        AutoSizeText("Last updated ",
                            maxLines: 2,
                            style: GoogleFonts.lato(
                                fontSize: 16.0, color: Colors.grey)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 60,
                        ),
                        AutoSizeText(
                            courseDetails["lastUpdated"]
                                .toString()
                                .substring(0, 10),
                            maxLines: 2,
                            style: GoogleFonts.lato(
                                fontSize: 15.0,
                                color:
                                    const Color.fromARGB(255, 216, 148, 228))),
                      ]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 120,
                      ),
                      Row(textBaseline: TextBaseline.ideographic, children: [
                        const Icon(
                          Icons.language,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 50,
                        ),
                        AutoSizeText("English",
                            maxLines: 2,
                            style: GoogleFonts.lato(
                                fontSize: 16.0, color: Colors.grey)),
                      ]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 120,
                      ),
                      Row(textBaseline: TextBaseline.ideographic, children: [
                        const Icon(
                          Icons.closed_caption,
                          color: Colors.grey,
                          size: 18,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 60,
                        ),
                        AutoSizeText("English",
                            maxLines: 2,
                            style: GoogleFonts.lato(
                                fontSize: 16.0, color: Colors.grey)),
                      ]),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      AutoSizeText("₹ ${courseDetails["costPrice"]}.00",
                          maxLines: 2,
                          style: GoogleFonts.lato(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 120,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 15,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.purple)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AutoSizeText("Buy now",
                                  maxLines: 2,
                                  style: GoogleFonts.lato(
                                      fontSize: 22.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 80,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 15,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                    side: BorderSide(color: Colors.white))),
                            backgroundColor: const MaterialStatePropertyAll(
                                Colors.transparent),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AutoSizeText("Add to cart",
                                maxLines: 2,
                                style: GoogleFonts.lato(
                                    fontSize: 15.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
