import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

class RictectsScreen extends StatefulWidget {
  const RictectsScreen({super.key});

  @override
  State<RictectsScreen> createState() => _RictectsScreenState();
}

class _RictectsScreenState extends State<RictectsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(50.h),
          RichText(text:  const TextSpan(
            text: 'khubu    ',style: TextStyle(color: Colors.red),
            children: <TextSpan> [
              TextSpan(text: 'second'),
              TextSpan(text: 'kk')
            ]
          )
          ),
        ],
      ),
    );
  }
}
