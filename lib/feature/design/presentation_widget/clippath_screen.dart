import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClippathScreen extends StatefulWidget {
  const ClippathScreen({super.key});

  @override
  State<ClippathScreen> createState() => _ClippathScreenState();
}

class _ClippathScreenState extends State<ClippathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: MyCliper(),
        child: Container(
          width: double.infinity,
          height: 400.h,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, 0);

    // Draw a line to the bottom right
    path.lineTo(size.width, size.height);

    // Draw a line to the bottom left
    path.lineTo(0, size.height);

    // Close the path
    path.close();

    return path; // This returns the triangle path
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // This means the clipping will not change on state changes
  }
}
