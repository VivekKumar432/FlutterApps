import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  // Container _getContainer(
  //     {double width = 150, double height = 150, Color myColor = Colors.white}) {
  //   return Container(
  //     width: width,
  //     height: height,
  //     color: myColor,
  //   );
  // }

  runApp(MaterialApp(
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search,
                    size: 30,
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(),
                // )
              ],
              backgroundColor: Color.fromARGB(255, 34, 0, 255),
              leading: const Icon(
                Icons.arrow_back,
                size: 30,
              ),
              title: const Text(
                'Categories',
                style: TextStyle(fontSize: 25),
              ),
              centerTitle: true,
            ),
          ),
          body: Column(children: [
            Row(
              children: [
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 30),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/50474c.jpg?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Staples',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 30),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/9fbd36.jpg?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Snacks & Beverages',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/ac8550.jpg?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Packaged Foods',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/7670e2.jpg?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Personal & Baby Care',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/b7ade9.jpg?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Household Care',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/8014b1.jpg?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Dairy & Eggs',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://rukminim1.flixcart.com/flap/128/128/image/e6e0ecc56771471a.png?q=100'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Home & Kitchen',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 190,
                  height: 160,
                  margin: EdgeInsets.only(left: 10, top: 10),
                  // child: Text(
                  //   'Hello Vivek',
                  //   style: TextStyle(fontSize: 40),
                  // ),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5)
                      ],
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-pM2cVm5aP1LOpQmwK2y41Ohv81XUmeds5g&usqp=CAU'))),
                  child: Container(
                    // width: 10,
                    // height: 10,
                    margin: EdgeInsets.only(top: 135),
                    color: Colors.white,
                    child: const Text(
                      'Vegetables',
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ]))));
}
