import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';


class CustompaintScreen extends StatefulWidget {
  const CustompaintScreen({super.key});

  @override
  State<CustompaintScreen> createState() => _CustompaintScreenState();
}

class _CustompaintScreenState extends State<CustompaintScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(200.h),
          Center(
            child: CustomPaint(
              painter: DemoPainter(),
              child: const Text("khusbu"),
            ),
          )
        ],
      ),
    );
  }
}
class DemoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var center = size / 2;
    var paint = Paint()..color = Colors.blue;
    canvas.drawArc(
        Rect.fromCenter(center: Offset(center.width, center.height), width:  200.w, height:  200.h),
        0.4,
        2 * 3.14 -0.8,
        true,
        paint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}