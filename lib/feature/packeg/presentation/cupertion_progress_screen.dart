import 'package:flutter/material.dart'; // Correct Import

class ProgressBarScreen extends StatefulWidget {
  @override
  _ProgressBarScreenState createState() => _ProgressBarScreenState();
}

class _ProgressBarScreenState extends State<ProgressBarScreen> {
  double _progressValue = 0.2; // Initial progress value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cupertino Progress Bar Example"),
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
            SizedBox(height: 30),
            // Button to simulate progress increase
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // Update progress value and loop back to 0 when it reaches 1.0
                  _progressValue = (_progressValue + 0.1).clamp(0.0, 1.0);
                });
              },
              child: Text("Increase Progress"),
            ),
            SizedBox(height: 20),
            Text(
              'Progress: ${(_progressValue * 100).toStringAsFixed(0)}%',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
