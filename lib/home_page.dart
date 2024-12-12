import 'package:calculator/arithmetic_calculator.dart';
import 'package:calculator/bmi_calculator.dart';
import 'package:calculator/gst_calculator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF120b3c),
      appBar: AppBar(
        backgroundColor: const Color(0xFF120b3c),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Choose Your Calculator",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white70),
          ),
          InkWell(
              child: Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    border: Border.all(),
                  ),
                  child: Row(children: [
                    Image.asset("assets/AC.png"),
                    const Text(
                      "Arithmetic Calculator",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54),
                    )
                  ])),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ArithmeticCalculator()));
              }),
          InkWell(
              child: Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  border: Border.all(),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/BMI.png", height: 80),
                    ),
                    const Text("BMI Calculator",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54))
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BMICalculator()));
              }),
          InkWell(
            child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(),
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/GST.jpg",
                    width: 90,
                  ),
                  const Text("GST - Calculator",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54))
                ],
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GSTCalculator()));
            },
          ),
        ],
      ),
    );
  }
}
