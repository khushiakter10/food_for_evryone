import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/text_font_style.dart';
import '../gen/colors.gen.dart';

class CustomButtonWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String name;

  const CustomButtonWidget({
    super.key, required this.onTap, required this.name,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: AppColors.cFEDE1C,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.sp),
          child: Center(
              child: Text(
                name,
                style: TextFontStyle.headlineFF460A,
              )),
        ),
      ),
    );
  }
}