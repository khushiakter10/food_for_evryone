import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';

class CustomDesignWidget extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final String? subtitle3;
  final Color? textStyle;
  final Color? subtitleStyle;
  final Color? subtitleStyle3;
  final ImageProvider? image1;
  final ImageProvider? image2;

  const CustomDesignWidget({
    super.key,
    this.title,
    this.subtitle,
    this.subtitle3,
    this.textStyle,
    this.subtitleStyle,
    this.subtitleStyle3,
    this.image1,
    this.image2,
  });

  @override
  State<CustomDesignWidget> createState() => _CustomDesignWidgetState();
}

class _CustomDesignWidgetState extends State<CustomDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 7.w),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: widget.image1 != null
                ? Image(image: widget.image1!,height: 40.h)
                : Image.asset(
              Assets.images.fulimage.path,
              height: 40.h,
              width: 40.h,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title ?? "Food Name",
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: widget.textStyle ?? Colors.black,
                ),
              ),
              Text(
                widget.subtitle ?? "Delicious & Healthy",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: widget.subtitleStyle ?? Colors.grey,
                ),
              ),
              Text(
                widget.subtitle3 ?? "Delicious",
                style: TextStyle(
                  fontSize: 9.sp,
                  color: widget.subtitleStyle3 ?? Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: widget.image2 != null
                ? Image(image: widget.image2!,height: 40.h)
                : Image.asset(
              Assets.images.halum.path,
              height: 40.h,
              width: 40.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
