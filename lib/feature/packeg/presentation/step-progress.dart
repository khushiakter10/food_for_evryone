import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';




class ProgressIndicatorScreen extends StatefulWidget {
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
        title: Text('Step Progress Indicator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // StepProgressIndicator ব্যবহার করা হচ্ছে
            StepProgressIndicator(
              totalSteps: totalSteps,
              currentStep: _currentStep,
              selectedColor: Colors.blue,  // বর্তমান স্টেপের কালার
              unselectedColor: Colors.grey,  // অন্য স্টেপের কালার
              size: 8,  // প্রতিটি স্টেপের সাইজ
              padding: 2,  // স্টেপের মাঝে স্পেস
            ),
            SizedBox(height: 30),
            // Button দিয়ে স্টেপ বাড়ানো বা কমানোর অপশন
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // ১ স্টেপ ইনক্রিমেন্ট করা হবে
                  if (_currentStep < totalSteps) {
                    _currentStep++;
                  }
                });
              },
              child: Text('Next Step'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  // ১ স্টেপ ডিক্রিমেন্ট করা হবে
                  if (_currentStep > 0) {
                    _currentStep--;
                  }
                });
              },
              child: Text('Previous Step'),
            ),
          ],
        ),
      ),
    );
  }
}
