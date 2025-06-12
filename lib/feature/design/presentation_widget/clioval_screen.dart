import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';


class CliovalScreen extends StatefulWidget {
  const CliovalScreen({super.key});

  @override
  State<CliovalScreen> createState() => _CliovalScreenState();
}

class _CliovalScreenState extends State<CliovalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(100.h),
          Center(
            child: ClipOval(
              clipper:  CustomClip(
              ),
              child: Container(
                height: 70.h,
                width: 90.w,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
class CustomClip extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {

    return Rect.fromLTWH(0, 00, size.width- 15,size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
   return false;
  }
  
}
