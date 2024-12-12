import 'package:flutter/material.dart';

class ArithmeticCalculator extends StatefulWidget {
  const ArithmeticCalculator({super.key});

  @override
  State<ArithmeticCalculator> createState() => _ArithmeticCalculatorState();
}

class _ArithmeticCalculatorState extends State<ArithmeticCalculator> {
  TextEditingController a = TextEditingController();
  String num1 = "", num2 = "", opt = "";
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF120b3c),
      ),
      backgroundColor: const Color(0xFF120b3c),
      body: Column(
        children: [
          TextFormField(
            controller: a,
            style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                height: 3.0,
                fontWeight: FontWeight.bold),
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                a.text = "";
                                num1 = "";
                                num2 = "";
                                click = false;
                                opt = "";
                              });
                            },
                            child: const Text(
                              "AC",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ))),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              int value = int.parse(num1);
                              if (value.isNegative) {
                                setState(() {
                                  value = value.abs();
                                  a.text = value.toString();
                                  num1 = a.text;
                                });
                              } else {
                                setState(() {
                                  value = value * -1;
                                  a.text = value.toString();
                                  num1 = a.text;
                                });
                              }
                            },
                            child: const Text(
                              "+/-",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ))),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                opt = "%";
                                a.text = "%";
                                click = true;
                              });
                            },
                            child: const Text(
                              "%",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ))),
                    SizedBox(
                        height: 80,
                        width: 80,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                a.text = "/";
                                opt = "/";
                                click = true;
                              });
                            },
                            child: const Text(
                              "/",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "7";
                                  a.text = num2;
                                } else {
                                  num1 += "7";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "7",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "8";
                                  a.text = num2;
                                } else {
                                  num1 += "8";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "8",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "9";
                                  a.text = num2;
                                } else {
                                  num1 += "9";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "9",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a.text = "*";
                                  opt = "*";
                                  click = true;
                                });
                              },
                              child: const Text(
                                "*",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "4";
                                  a.text = num2;
                                } else {
                                  num1 += "4";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "4",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "5";
                                  a.text = num2;
                                } else {
                                  num1 += "5";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "5",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "6";
                                  a.text = num2;
                                } else {
                                  num1 += "6";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "6",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a.text = "-";
                                  opt = "-";
                                  click = true;
                                });
                              },
                              child: const Text(
                                "-",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "1";
                                  a.text = num2;
                                } else {
                                  num1 += "1";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "2";
                                  a.text = num2;
                                } else {
                                  num1 += "2";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "2",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "3";
                                  a.text = num2;
                                } else {
                                  num1 += "3";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "3",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a.text = "+";
                                  opt = "+";
                                  click = true;
                                });
                              },
                              child: const Text(
                                "+",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += "0";
                                  a.text = num2;
                                } else {
                                  num1 += "0";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                "0",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                if (click) {
                                  num2 += ".";
                                  a.text = num2;
                                } else {
                                  num1 += ".";
                                  a.text = num1;
                                }
                              },
                              child: const Text(
                                ".",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  if (num1.isNotEmpty) {
                                    num1 = num1.substring(0, num1.length);
                                  }
                                  a.text = num1;
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(right: 50),
                                child: Center(
                                    child: Icon(Icons.arrow_back, size: 40)),
                              ))),
                      SizedBox(
                          height: 80,
                          width: 80,
                          child: ElevatedButton(
                              onPressed: () {
                                double x = double.parse(num1);
                                double y = double.parse(num2);
                                double z = 0;
                                if (opt == "+") {
                                  z = x + y;
                                  print(z);
                                } else if (opt == "-") {
                                  z = x - y;
                                } else if (opt == "*") {
                                  z = x * y;
                                } else if (opt == "/") {
                                  z = x / y;
                                } else if (opt == "%") {
                                  z = x * y / 100;
                                }
                                num1 = z.toString();
                                a.text = num1;
                                num2 = "";
                              },
                              child: const Text(
                                "=",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                              ))),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
