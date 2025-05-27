import 'package:flutter/material.dart';
import 'dart:math';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  // কাপের ছবি গুলি
  final List<String>  misti = [
    'assets/images/misti.jpg',
    'assets/images/misti.jpg',
    'assets/images/misti.jpg',
  ];

  List<double> _cupPositions = [0, 0, 0]; // Y position for each cup

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cup Shuffle Example')),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      misti.shuffle();
                      _cupPositions = _getRandomPositions();
                    });
                  },
                  child: Text('Shuffle Cups'),
                ),
                SizedBox(height: 20),
                Stack(
                  children: misti.asMap().entries.map((entry) {
                    int index = entry.key;
                    String cup = entry.value;

                    return AnimatedPositioned(
                      duration: Duration(seconds: 1),
                      curve: Curves.easeInOut,
                      bottom: _cupPositions[index],
                      left: 100.0 * index.toDouble(),
                      child: Container(
                        width: 100,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            cup,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Elomelo position generate korar function
  List<double> _getRandomPositions() {
    final random = Random();
    return [
      random.nextDouble() * 200, // Random position for first cup
      random.nextDouble() * 200, // Random position for second cup
      random.nextDouble() * 200, // Random position for third cup
    ];
  }
}
