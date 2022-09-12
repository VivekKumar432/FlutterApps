import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemy_clone/screens/courseDetails.dart';
import 'package:udemy_clone/services/client.dart';

class MyCoursePage extends StatefulWidget {
  const MyCoursePage({super.key});

  @override
  State<MyCoursePage> createState() => _MyCoursePageState();
}

class _MyCoursePageState extends State<MyCoursePage> {
  final ApiClient _apiClient = ApiClient();
  List<dynamic> courses = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fetchDATA();
  }

  _fetchDATA() async {
    courses = await _apiClient.getCourse();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                MaterialButton(
                  onPressed: () {},
                  child: AutoSizeText("SIGN IN",
                      maxLines: 1,
                      style: GoogleFonts.lato(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              child: Image.asset(
                "assets/banner.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText("Learning that fits",
                        maxLines: 1,
                        style: GoogleFonts.lato(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 90,
                    ),
                    AutoSizeText("Skills for your present (and future)",
                        maxLines: 1,
                        style: GoogleFonts.lato(
                            fontSize: 18.0, color: Colors.white)),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    AutoSizeText("Featured",
                        maxLines: 1,
                        style: GoogleFonts.lato(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ]),
            ),
            Expanded(
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.7),
                      crossAxisCount: 2),
                  itemCount: courses.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.all(5),
                        height: MediaQuery.of(context).size.height / 50,
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              const MyCourseDetails()));
                                },
                                child: Image.network(
                                  courses[index]["courseImage"],
                                  fit: BoxFit.fill,
                                )),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            AutoSizeText(courses[index]["title"],
                                maxLines: 2,
                                style: GoogleFonts.lato(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 110,
                            ),
                            AutoSizeText(courses[index]['trainer']['fullName'],
                                maxLines: 2,
                                style: GoogleFonts.lato(
                                    fontSize: 10.0, color: Colors.grey)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 70,
                            ),
                            AutoSizeText("₹ ${courses[index]['costPrice']}.00",
                                maxLines: 2,
                                style: GoogleFonts.lato(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                          ],
                        ));
                  }),
            ),
          ],
        ),

        // child: FutureBuilder(
        //   future: _apiClient.getCourse(),
        //   builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        //     if (snapshot.hasError) {
        //       print(snapshot.hasError);
        //       print(snapshot);
        //       return const Center(child: Text('Something Went Wrong...'));
        //     } else if (snapshot.hasData) {
        //       return ListView.builder(
        //           itemCount: snapshot.data?.length,
        //           itemBuilder: (_, int index) {
        //             return ListTile(
        //               leading: Image.network((snapshot.data![index]
        //                       ['trainer']['photo']) ??
        //                   "http://cdn.onlinewebfonts.com/svg/img_98811.png"),
        //               title: Text((snapshot.data![index]['trainer']
        //                       ['headline']) ??
        //                   ""),
        //               subtitle: Text((snapshot.data![index]['trainer']
        //                       ['biography']) ??
        //                   ""),
        //             );
        //           });
        //     } else {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //   },
        // )
      )),
    );
  }
}
