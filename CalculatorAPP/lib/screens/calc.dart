import 'package:eval_ex/expression.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class DeviceDimensions {
  BuildContext context;

  DeviceDimensions(this.context);

  double get width => MediaQuery.of(context).size.width;
  double get height => MediaQuery.of(context).size.height;
}

class _CalcState extends State<Calc> {
  String? currentValue;
  String textValue = "";
  bool isOperator = false;

  @override
  initState() {
    super.initState();
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }

  GestureDetector equalButton(String number) {
    return GestureDetector(
      onTap: () {
        String expression = tc;

        if (expression.endsWith('/') ||
            expression.endsWith('x') ||
            expression.endsWith('-') ||
            expression.endsWith('+') ||
            expression.endsWith('%')) {
          isOperator = false;
          print("if $isOperator");
          return;
        }
        expression = expression.replaceAll("x", "*");
        Expression exp = Expression(expression);
        tc = exp.eval().toString();
        isOperator = false;
        print(" success $isOperator");
        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 8.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration:
            const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }
  // } on Exception catch (err) {
  //   print("error is $err");
  //   isOperator = !isOperator;
  //   throw Exception();
  // }

  GestureDetector _digitButton(String number) {
    return GestureDetector(
      onTap: () {
        currentValue = number;
        tc = tc + (currentValue ?? "");
        isOperator = false;
        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 8.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 60, 55, 55), shape: BoxShape.circle),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }

  GestureDetector _functionButton(String number) {
    return GestureDetector(
      onTap: () {
        if (number == "del") {
          if (tc.isNotEmpty) {
            tc = tc.substring(0, tc.length - 1);
            setState(() {});
          }
          return;
        }
        currentValue = number;
        tc = tc + (currentValue ?? "");

        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 15,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 224, 97, 33),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }

  GestureDetector _digitButton1(String number) {
    return GestureDetector(
      onTap: () {
        currentValue = number;
        tc = tc + (currentValue ?? "");
        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 2.15,
        height: DeviceDimensions(context).height / 9.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 60, 55, 55),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }

  GestureDetector _operatorButton(String number) {
    return GestureDetector(
      onTap: () {
        if (isOperator) {
          String expression = tc;
          expression = expression.substring(0, expression.length - 1);
          print("Expression Value is $expression");
          expression = expression + number;
          print("Now Expression is $expression");
          tc = expression;
          print(isOperator);
          //isOperator = !isOperator;
          setState(() {});
          return;
        }
        currentValue = number;
        tc = tc + (currentValue ?? "");
        isOperator = true;
        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 8.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration:
            const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
    );
  }

  GestureDetector _clearbutton(String number) {
    return GestureDetector(
      onTap: () {
        currentValue = number;
        tc = "";
        isOperator = false;
        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 8.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 155, 154, 152), shape: BoxShape.circle),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }

  GestureDetector _demobutton(String number) {
    return GestureDetector(
      onTap: () {
        currentValue = number;
        tc = tc + (currentValue ?? "");
        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 8.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 155, 154, 152), shape: BoxShape.circle),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }

  plusMinus(String sign) {
    return GestureDetector(
      onTap: () {
        tc = (int.parse(tc) * -1).toString();

        setState(() {});
      },
      child: Container(
        width: DeviceDimensions(context).width / 4.5,
        height: DeviceDimensions(context).height / 8.5,
        margin: EdgeInsets.only(
            left: DeviceDimensions(context).width / 72,
            right: DeviceDimensions(context).width / 72),
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 155, 154, 152), shape: BoxShape.circle),
        child: Center(
          child: Text(
            sign,
            style: const TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }

  String tc = "";
  //TextEditingController tc = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          // ignore: sized_box_for_whitespace
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: DeviceDimensions(context).height / 4,
                color: Colors.red,
                // margin: const EdgeInsets.all(5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    tc,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 60, color: Colors.white),
                  ),
                ),
                // child: TextField(
                //   controller: tc,
                //   style: const TextStyle(fontSize: 30, color: Colors.white),
                //   decoration: InputDecoration(
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(10))),
                // ),
              ),
              SizedBox(
                height: DeviceDimensions(context).height / 150,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     _functionButton("Sin"),
              //     _functionButton("Cos"),
              //     _functionButton("Tan"),
              //     _functionButton("^")
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _functionButton("!"),
                      _functionButton("("),
                      _functionButton(")"),
                      _functionButton("del")
                    ],
                  ),
                  SizedBox(
                    height: DeviceDimensions(context).height / 150,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _clearbutton("AC"),
                      plusMinus("+/-"),
                      _demobutton("%"),
                      _operatorButton("/")
                    ],
                  ),
                  SizedBox(
                    height: DeviceDimensions(context).height / 150,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // DigitButtons("3"),
                      _digitButton("7"),
                      _digitButton("8"),
                      _digitButton("9"),
                      _operatorButton("x")
                    ],
                  ),
                  SizedBox(
                    height: DeviceDimensions(context).height / 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _digitButton("4"),
                      _digitButton("5"),
                      _digitButton("6"),
                      _operatorButton("-")
                    ],
                  ),
                  SizedBox(
                    height: DeviceDimensions(context).height / 150,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _digitButton("1"),
                      _digitButton("2"),
                      _digitButton("3"),
                      _operatorButton("+")
                    ],
                  ),
                  SizedBox(
                    height: DeviceDimensions(context).height / 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _digitButton1("0"),
                      _digitButton("."),
                      equalButton("="),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
