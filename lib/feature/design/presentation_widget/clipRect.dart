import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class Cliprect extends StatefulWidget {
  const Cliprect({super.key});

  @override
  State<Cliprect> createState() => _CliprectState();
}

class _CliprectState extends State<Cliprect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Corrected usage of ClipRect without custom clipper (or replace with ClipPath if custom clipping is needed)
            ClipRect(
              child: Container(
                width: 200.0.w,
                height: 200.0.h,
                color: Colors.red,
              ),
            ),
            UIHelper.verticalSpace(50.h),

            // Correct usage of ClipRRect with rounded corners and image
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.circular(30.r),
              child: Image.asset(
                Assets.images.bagh.path,
                width: 300.w,
                height: 200.h,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

