import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../helpers/ui_helpers.dart';

class CustomContainer extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final TextStyle? textStyle;
  final TextStyle? subtextStyle;
  final String? trailing;
  final TextStyle? trailingStyle;
  final ImageProvider? imagehasi;
  final ImageProvider? imagekhusi;

  const CustomContainer({
    super.key,
    this.title,
    this.subtitle,
    this.textStyle,
    this.subtextStyle,
    this.trailing,
    this.trailingStyle,
    this.imagehasi,
    this.imagekhusi,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.h),
          child: Row(
            children: [
              if (imagehasi != null)
                Image(image: imagehasi!, height: 24.h),
              if (imagekhusi != null)
                Image(image: imagekhusi!, height: 24.h),
              UIHelper.horizontalSpace(10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "BD Calling",
                    style: textStyle ?? TextStyle(color: Colors.red, fontSize: 14.sp),
                  ),
                  Text(
                    subtitle ?? "Khusbu",
                    style: subtextStyle ?? TextStyle(color: Colors.black, fontSize: 12.sp),
                  ),
                ],
              ),
              Spacer(),
              Text(
                trailing ?? 'Khushi',
                style: trailingStyle ?? TextStyle(fontSize: 14.sp, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
