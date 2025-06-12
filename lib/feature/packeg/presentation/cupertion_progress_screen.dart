import 'package:flutter/material.dart';

class CuperTionScreen extends StatefulWidget {
  @override
  _CuperTionScreenState createState() => _CuperTionScreenState();
}

class _CuperTionScreenState extends State<CuperTionScreen> {
  double _progressValue = 0.2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino Progress Bar Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // CupertinoProgressBar Widget
            // CupertinoProgressBar(
            //   progress: _progressValue,
            //   backgroundColor: Colors.grey.shade300,
            //   color: Colors.blue,
            //   height: 10,
            // ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _progressValue = (_progressValue + 0.1).clamp(0.0, 1.0);
                });
              },
              child: const Text("Increase Progress"),
            ),
            const SizedBox(height: 20),
            Text(
              'Progress: ${(_progressValue * 100).toStringAsFixed(0)}%',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
