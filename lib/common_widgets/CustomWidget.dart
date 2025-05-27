import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../gen/assets.gen.dart';

class CustomConatinerWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? subtitle3;
  final ImageProvider? imageone;
  final ImageProvider? imagetwo;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? subtitleStyle3;
  final Color? borderColor;
  final Color? textColor;
  final double? fontSize;



  const CustomConatinerWidget({
    super.key,
    this.title,
    this.subtitle,
    this.subtitle3,
    this.imageone,
    this.imagetwo,
    this.titleStyle,
    this.subtitleStyle,
    this.subtitleStyle3,
    this.borderColor,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red),
      ),
      child: Row(
        children: [
          // Left Image
          if (imageone != null)
            Image(
              image: imageone!,
              height: 50.h,
              width: 50.w,
              fit: BoxFit.cover,
            )
          else
            const SizedBox(), // Ensures layout consistency if no image is provided

          SizedBox(width: 15.w),

          // Text Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "",
                style: titleStyle ?? TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle ?? "",
                style: subtitleStyle ?? TextStyle(fontSize: 14.sp, color: Colors.grey),
              ),
              Text(
                subtitle3 ?? "",
                style: subtitleStyle3 ?? TextStyle(fontSize: 14.sp, color: Colors.green),
              ),
            ],
          ),
          Spacer(),
          Image.asset(Assets.images.full.path,height: 24.h,)

        ],
      ),
    );
  }
}
