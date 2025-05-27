import 'package:flutter/material.dart';
import 'dart:math';

class CupScreen extends StatefulWidget {
  @override
  _CupScreenState createState() => _CupScreenState();
}

class _CupScreenState extends State<CupScreen> {
  // কাপের ছবি গুলি
  final List<String> misti = [
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // শাফল বোতাম
            ElevatedButton(
              onPressed: () {
                setState(() {
                  misti.shuffle(); // তালিকা শাফল করা
                  _cupPositions = _getRandomPositions(); // এলোমেলো অবস্থান জেনারেট করা
                });
              },
              child: Text('Shuffle Cups'),
            ),
            SizedBox(height: 20),
            // কাপের ছবি প্রদর্শন
            Stack(
              children: misti.asMap().entries.map((entry) {
                int index = entry.key;
                String cup = entry.value;

                // কাপের Y অবস্থান অ্যানিমেট করতে
                return AnimatedPositioned(
                  duration: Duration(seconds: 1), // অ্যানিমেশন সময়
                  curve: Curves.easeInOut,
                  bottom: _cupPositions[index], // Cup's position from bottom
                  left: 100.0 * index.toDouble(), // Positioning each cup horizontally
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
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
                          errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                            return Center(
                              child: Icon(Icons.error, color: Colors.red), // Error icon if image is not loaded
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  // Elomelo position generate korar function
  List<double> _getRandomPositions() {
    final random = Random();
    return [
      random.nextDouble() * 100, // Random position for first cup
      random.nextDouble() * 100, // Random position for second cup
      random.nextDouble() * 100, // Random position for third cup
    ];
  }
}
