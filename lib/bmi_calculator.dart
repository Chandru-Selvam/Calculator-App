import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController h = TextEditingController();
  TextEditingController w = TextEditingController();
  double bmi = 0.0;
  Color co = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF120b3c),
      ),
      backgroundColor: const Color(0xFF120b3c),
      body: SafeArea(
        child: Column(children: [
          const Text(
            "BMI",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(

              controller: h,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
              decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.height,
                    size: 50,
                    color: Colors.white,
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 10.0,
                    ),
                  ),
                  hintText: "Enter Your Height"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: w,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
              decoration: InputDecoration(
                  suffixIcon: const Text(
                    "kg",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 10.0,
                    ),
                  ),
                  hintText: "Input Your Weight"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    double height = double.parse(h.text);
                    double weight = double.parse(w.text);
                    bmi = (weight / (height * height)) * 10000;
                    print(bmi);
                    if (bmi < 18) {
                      co = Colors.blue;
                    }
                    if (bmi > 18) {
                      co = Colors.green;
                    }
                    if (bmi > 25) {
                      co = Colors.yellow;
                    }
                    if (bmi > 35) {
                      co = Colors.redAccent;
                    }
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Container(
                              height: 100,
                              width: 200,
                              color: co,
                              child: Column(
                                children: [
                                  Text(bmi == null
                                      ? "BMI $bmi,$co"
                                      : bmi.toString())
                                ],
                              ),
                            ),
                          );
                        });
                  });
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.yellow,
                    backgroundColor: Colors.black,
                    textStyle:
                        const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                child: Text("click")),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 80,
                  color: Colors.blue,
                  child: const Center(
                      child: Text(
                    "low",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 80,
                  color: Colors.green,
                  child: const Center(
                      child: Text(
                    "Good",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 80,
                  color: Colors.yellow,
                  child: const Center(
                      child: Text(
                    "Risk",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 40,
                  width: 100,
                  color: Colors.redAccent,
                  child: const Center(
                      child: Text(
                    "Unhealthy",
                    style: TextStyle(fontSize: 20),
                  )),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
