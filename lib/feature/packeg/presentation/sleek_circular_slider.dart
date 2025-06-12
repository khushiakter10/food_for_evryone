import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


class SelectCurcular extends StatefulWidget {
  const SelectCurcular({super.key});

  @override
  _SelectCurcularState createState() => _SelectCurcularState();
}

class _SelectCurcularState extends State<SelectCurcular> {
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sleek Circular Slider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SleekCircularSlider(
              initialValue: _sliderValue,
              min: 0,  // Minimum value
              max: 100,  // Maximum value
              onChange: (double value) {
                setState(() {
                  _sliderValue = value;
                });
              },
              innerWidget: (value) {
                return Center(
                  child: Text(
                    "${value.toStringAsFixed(1)}",
                    style: const TextStyle(fontSize: 40),
                  ),
                );
              },
              appearance: CircularSliderAppearance(
                customWidths: CustomSliderWidths(
                  progressBarWidth: 10,
                  handlerSize: 20,
                ),
                customColors: CustomSliderColors(
                  progressBarColor: Colors.blue,
                  dotColor: Colors.blue,
                  trackColor: Colors.grey.shade200,
                ),
                size: 200,  // Size of the slider
              ),
            ),
            const SizedBox(height: 30),
            Text(
              'Slider Value: ${_sliderValue.toStringAsFixed(1)}',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
