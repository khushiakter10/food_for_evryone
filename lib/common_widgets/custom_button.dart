// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';

Widget customeButton({
  required String name,
  required VoidCallback onCallBack,
  required double height,
  required double minWidth,
  required double borderRadius,
  required Color color,
  required TextStyle textStyle,
  required BuildContext context,
  Color? borderColor,
  double? borderWidth,
}) {
  return MaterialButton(
    onPressed: onCallBack,
    height: height,
    minWidth: minWidth,
    shape: RoundedRectangleBorder(
      side: BorderSide(
          color: borderColor ?? AppColors.c000000, width: borderWidth?? 1.5.sp),
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    color: color,
    splashColor: Colors.white.withOpacity(0.4),
    child: Text(
      name,
      style: textStyle,
    ),
  );
}
