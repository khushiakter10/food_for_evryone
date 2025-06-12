import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';  // Import the package


class SelectCurcular extends StatefulWidget {
  const SelectCurcular({super.key});

  @override
  _SelectCurcularState createState() => _SelectCurcularState();
}

class _SelectCurcularState extends State<SelectCurcular> {
  double _sliderValue = 50;  // Initial value of the slider

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sleek Circular Slider Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SleekCircularSlider(
              initialValue: _sliderValue,  // Initial value of the slider
              min: 0,  // Minimum value
              max: 100,  // Maximum value
              onChange: (double value) {
                setState(() {
                  _sliderValue = value;  // Update slider value on change
                });
              },
              innerWidget: (value) {
                return Center(
                  child: Text(
                    "${value.toStringAsFixed(1)}",  // Display the slider value
                    style: TextStyle(fontSize: 40),
                  ),
                );
              },
              appearance: CircularSliderAppearance(
                customWidths: CustomSliderWidths(
                  progressBarWidth: 10,  // Width of the progress bar
                  handlerSize: 20,  // Size of the handler
                ),
                customColors: CustomSliderColors(
                  progressBarColor: Colors.blue,  // Color of the progress bar
                  dotColor: Colors.blue,  // Color of the dot
                  trackColor: Colors.grey.shade200,  // Color of the track
                ),
                size: 200,  // Size of the slider
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Slider Value: ${_sliderValue.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
