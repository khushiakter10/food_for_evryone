import 'dart:async';
import 'package:flutter/material.dart';
import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';

class DashedProgressExample extends StatefulWidget {
  const DashedProgressExample({super.key});

  @override
  _DashedProgressExampleState createState() => _DashedProgressExampleState();
}

class _DashedProgressExampleState extends State<DashedProgressExample> {
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
      appBar: AppBar(title: const Text('Dashed Circular Progress Bar')),
      body: Center(
        child: DashedCircularProgressBar.aspectRatio(
          aspectRatio: 2,
          progress: _valueNotifier.value,
          maxProgress: 100,
          startAngle: 270,
          sweepAngle: 180,
          circleCenterAlignment: Alignment.bottomCenter,
          foregroundColor: Colors.blue,
          backgroundColor: const Color(0xffeeeeee),
          foregroundStrokeWidth: 8,
          backgroundStrokeWidth: 4,
          backgroundGapSize: 2,
          backgroundDashSize: 2,
          seekColor: Colors.red,
          seekSize: 22,
          animation: true,
          child: Center(
            child: ValueListenableBuilder<double>(
              valueListenable: _valueNotifier,
              builder: (_, double value, __) => Text(
                '${value.toInt()}%',
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
