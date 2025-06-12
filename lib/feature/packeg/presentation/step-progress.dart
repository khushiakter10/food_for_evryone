import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';




class ProgressIndicatorScreen extends StatefulWidget {
  const ProgressIndicatorScreen({super.key});

  @override
  _ProgressIndicatorScreenState createState() =>
      _ProgressIndicatorScreenState();
}

class _ProgressIndicatorScreenState extends State<ProgressIndicatorScreen> {
  int _currentStep = 4;
  int totalSteps = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Step Progress Indicator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StepProgressIndicator(
              totalSteps: totalSteps,
              currentStep: _currentStep,
              selectedColor: Colors.blue,
              unselectedColor: Colors.grey,
              size: 8,
              padding: 2,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_currentStep < totalSteps) {
                    _currentStep++;
                  }
                });
              },
              child: const Text('Next Step'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_currentStep > 0) {
                    _currentStep--;
                  }
                });
              },
              child: const Text('Previous Step'),
            ),
          ],
        ),
      ),
    );
  }
}
