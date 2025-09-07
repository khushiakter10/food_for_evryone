import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/colors.gen.dart';


class CustomContainerTextWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;


  const CustomContainerTextWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(

            padding: EdgeInsets.symmetric(vertical: 14.h,horizontal: 17.w),
            decoration: BoxDecoration(
              color: isSelected ? Colors.red:  Colors.blue,
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(
                color: AppColors.bodertextcolor,
              ),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                  color: isSelected ? AppColors.cFFFFFF : AppColors.allPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
