import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class GoogleMapScreen extends StatefulWidget {
  @override
  _GoogleMapScreenState createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  // Make sure to replace 'YOUR_GOOGLE_MAPS_API_KEY' with your actual API key
  String googleMapUrl =
      "https://maps.googleapis.com/maps/api/staticmap?center=23.8103,90.4125&zoom=12&size=600x400&markers=color:red%7C23.8103,90.4125&key=YOUR_GOOGLE_MAPS_API_KEY";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map Static Image'),
      ),
      body: Center(
        child: Column(
          children: [
            // Static Google Map Image
            Image.network(googleMapUrl),
            SizedBox(height: 20),
            // You can add other widgets here if you want
          ],
        ),
      ),
    );
  }
}
