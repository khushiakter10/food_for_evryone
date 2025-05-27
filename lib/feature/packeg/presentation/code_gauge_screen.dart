import 'package:flutter/material.dart';
class CodeGaugeScreen extends StatefulWidget {
  const CodeGaugeScreen({super.key});

  @override
  _CodeGaugeScreenState createState() => _CodeGaugeScreenState();
}

class _CodeGaugeScreenState extends State<CodeGaugeScreen> {
  double _value = 70;  // Initial value of the gauge

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Code Gauge Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Replace this with the correct widget from girix_code_gauge
            Text("Current Gauge Value: $_value", style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Container(
              // This is a placeholder for the actual gauge widget.
              // Replace this with the correct widget from the girix_code_gauge package.
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blue.shade200,
                shape: BoxShape.circle,
              ),
              child: const Center(child: Text("Gauge Placeholder", style: TextStyle(fontSize: 18))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _value = (_value + 10) % 110;  // Increment the value
                });
              },
              child: const Text("Increase Value"),
            ),
          ],
        ),
      ),
    );
  }
}
