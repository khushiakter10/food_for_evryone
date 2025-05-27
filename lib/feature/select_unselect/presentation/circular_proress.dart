import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class ProgressBarExample extends StatefulWidget {
  const ProgressBarExample({super.key});

  @override
  _ProgressBarExampleState createState() => _ProgressBarExampleState();
}

class _ProgressBarExampleState extends State<ProgressBarExample> {
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startProgressAnimation();
  }

  void _startProgressAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      _valueNotifier.value += 2;

      if (_valueNotifier.value >= 100) {
        _valueNotifier.value = 100;
        timer.cancel();
      }

      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Increasing Progress with Color')),
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: DashedCircularProgressBar(
            valueNotifier: _valueNotifier,
            progress: _valueNotifier.value,
            maxProgress: 100,
            foregroundStrokeWidth: 20,
            backgroundStrokeWidth: 20,
            foregroundColor: Color.lerp(Colors.red, Colors.green, _valueNotifier.value / 100)!,
            backgroundColor: const Color(0xffeeeeee),
            animation: true,
            width: 200,
            height: 200,
            child: Center(
              child: ValueListenableBuilder<double>(
                valueListenable: _valueNotifier,
                builder: (_, double value, __) => Text(
                  '${value.toInt()}%',
                  style: TextStyle(
                    color: Color.lerp(Colors.red, Colors.green, value / 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
