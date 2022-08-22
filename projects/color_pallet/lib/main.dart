import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Color_Palette(),
  );
}

class Color_Palette extends StatefulWidget {
  const Color_Palette({Key? key}) : super(key: key);

  @override
  State<Color_Palette> createState() => _Color_PaletteState();
}

class _Color_PaletteState extends State<Color_Palette> {
  @override
  Color random() {
    return RandomColor[Random().nextInt(19)];
  }

  List<Color> RandomColor = [
    Colors.teal,
    Colors.green,
    Colors.indigo,
    Colors.redAccent,
    Colors.purple,
    Colors.white70,
    Colors.tealAccent,
    Colors.deepPurpleAccent,
    Colors.red,
    Colors.purple,
    Colors.orange,
    Colors.lime,
    Colors.pink,
    Colors.amberAccent,
    Colors.pinkAccent,
    Colors.grey,
    Colors.lime,
    Colors.black54,
    Colors.brown,
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Column(
            children: [
              const SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Color Palette",
                      style: TextStyle(
                          color: Color(0xff3BB3F9),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Generator",
                      style: TextStyle(
                          color: Color(0xff3BB3F9),
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                  color: random(),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(14),
                    topRight: Radius.circular(14),
                  ),
                ),
              ),
              Container(
                height: 70,
                width: 90,
                color: random(),
              ),
              Container(
                height: 70,
                width: 90,
                color: random(),
              ),
              Container(
                height: 70,
                width: 90,
                color: random(),
              ),
              Container(
                height: 70,
                width: 90,
                color: random(),
              ),
              Container(
                height: 70,
                width: 90,
                decoration: BoxDecoration(
                  color: random(),
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container(
                  height: 40,
                  width: 220,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: const Color(0xff3BB3F9),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Generate",
                    style: TextStyle(
                      color: Color(0xff3BB3F9),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
