// import 'package:flutter/material.dart';
//
//
//
//
//
// class MultiCircularSliderScreen extends StatefulWidget {
//   @override
//   _MultiCircularSliderScreenState createState() => _MultiCircularSliderScreenState();
// }
//
// class _MultiCircularSliderScreenState extends State<MultiCircularSliderScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Multi Circular Slider Example"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             // MultiCircularSlider Widget
//             MultiCircularSlider(
//               size: MediaQuery.of(context).size.width * 0.8,
//               progressBarType: MultiCircularSliderType.circular, // Circular progress
//               values: [0.2, 0.1, 0.3, 0.25], // Progress values for each track
//               colors: [
//                 Color(0xFFFD1960), // Color for the first progress track
//                 Color(0xFF29D3E8), // Color for the second progress track
//                 Color(0xFF18C737), // Color for the third progress track
//                 Color(0xFFFFCC05), // Color for the fourth progress track
//               ],
//               showTotalPercentage: true, // Display total percentage in center
//               label: 'This is label text', // Label below the percentage
//               animationDuration: const Duration(milliseconds: 500), // Animation duration
//               animationCurve: Curves.easeIn, // Animation curve for smooth transition
//               innerIcon: Icon(Icons.integration_instructions), // Icon to display inside the slider
//               innerWidget: Text('96%'), // Custom widget to display inside the circular slider
//               trackColor: Colors.white, // Track color
//               progressBarWidth: 52.0, // Progress bar width
//               trackWidth: 52.0, // Track width
//               labelTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Text style for label
//               percentageTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), // Text style for percentage
//             ),
//             SizedBox(height: 30),
//             // You can add additional widgets here if necessary
//           ],
//         ),
//       ),
//     );
//   }
// }
