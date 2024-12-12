import 'package:flutter/material.dart';

class GSTCalculator extends StatefulWidget {
  const GSTCalculator({super.key});

  @override
  State<GSTCalculator> createState() => _GSTCalculatorState();
}

class _GSTCalculatorState extends State<GSTCalculator> {
  TextEditingController a = TextEditingController();
  TextEditingController b = TextEditingController();
  double p = 0;
  double res = 0;
  double cal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120b3c),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF120b3c),
        title: const Center(
            child: Text(
          "GST",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
        )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: TextFormField(
                controller: a,
                style: const TextStyle(
                    height: 2, fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Enter Your Amount",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 10))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: b,
              style: const TextStyle(
                  height: 2, fontWeight: FontWeight.bold, fontSize: 40,color: Colors.white),
              decoration: InputDecoration(
                  hintText: "Enter Your GST %",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.black, width: 10))),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        double c = double.parse(a.text);
                        double d = double.parse(b.text);
                        setState(() {
                          p = c - (c * (100 / (100 + d)));
                          res = c - p;
                          cal = c;
                        });
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Container(
                                  color: Colors.cyan,
                                  height: 200,
                                  width: 300,
                                  child: Column(
                                    children: [
                                      Text("GST Amount :$p"),
                                      Text("Product Amount : $res"),
                                      Text("GST + P.Amount : $cal")
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      child: const Text(
                        "Inclusive",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 110, top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        double c = double.parse(a.text);
                        double d = double.parse(b.text);
                        setState(() {
                          p = (d / 100) * c;
                          res = p + c;
                          cal = c;
                        });
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Container(
                                  height: 200,
                                  width: 300,
                                  color: Colors.purpleAccent,
                                  child: Column(
                                    children: [
                                      Text("GST Amount :$p"),
                                      Text("GST + P.Amount : $res"),
                                      Text("Product Amount : $cal")
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black),
                      child: const Text(
                        "Exclusive",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
