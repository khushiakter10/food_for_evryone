
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/assets.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';

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
            UIHelper.verticalSpace(30),
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
