import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;

  void _handleSelection(int selectedIndex) {
    setState(() {
      _isSelected1 = selectedIndex == 1;
      _isSelected2 = selectedIndex == 2;
      _isSelected3 = selectedIndex == 3;
      _isSelected4 = selectedIndex == 4;
      _isSelected5 = selectedIndex == 5;
      _isSelected6 = selectedIndex == 6;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            UIHelper.verticalSpace(100.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _handleSelection(1),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
                    decoration: BoxDecoration(
                      color: _isSelected1 ? AppColors.borderColor : AppColors.bacRoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: _isSelected1 ? AppColors.borderColor : AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      "Egg 1",
                      style: TextFontStyle.headline045B30text.copyWith(
                        color: _isSelected1 ? AppColors.cFFFFFF : AppColors.borderColor,
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpace(6.w),
                GestureDetector(
                  onTap: () => _handleSelection(2),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
                    decoration: BoxDecoration(
                      color: _isSelected2 ? AppColors.borderColor : AppColors.bacRoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: _isSelected2 ? AppColors.borderColor : AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      "Egg 2",
                      style: TextFontStyle.headline045B30text.copyWith(
                        color: _isSelected2 ? AppColors.cFFFFFF : AppColors.borderColor,
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpace(6.w),
                GestureDetector(
                  onTap: () => _handleSelection(3),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
                    decoration: BoxDecoration(
                      color: _isSelected3 ? AppColors.borderColor : AppColors.bacRoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: _isSelected3 ? AppColors.borderColor : AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      "Egg 3",
                      style: TextFontStyle.headline045B30text.copyWith(
                        color: _isSelected3 ? AppColors.cFFFFFF : AppColors.borderColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _handleSelection(4),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
                    decoration: BoxDecoration(
                      color: _isSelected4 ? AppColors.borderColor : AppColors.bacRoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: _isSelected4 ? AppColors.borderColor : AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      "Egg 4",
                      style: TextFontStyle.headline045B30text.copyWith(
                        color: _isSelected4 ? AppColors.cFFFFFF : AppColors.borderColor,
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpace(6.w),
                GestureDetector(
                  onTap: () => _handleSelection(5),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
                    decoration: BoxDecoration(
                      color: _isSelected5 ? AppColors.borderColor : AppColors.bacRoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: _isSelected5 ? AppColors.borderColor : AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      "Egg 5",
                      style: TextFontStyle.headline045B30text.copyWith(
                        color: _isSelected5 ? AppColors.cFFFFFF : AppColors.borderColor,
                      ),
                    ),
                  ),
                ),
                UIHelper.horizontalSpace(6.w),
                GestureDetector(
                  onTap: () => _handleSelection(6),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 30.w),
                    decoration: BoxDecoration(
                      color: _isSelected6 ? AppColors.borderColor : AppColors.bacRoundColor,
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(
                        color: _isSelected6 ? AppColors.borderColor : AppColors.borderColor,
                      ),
                    ),
                    child: Text(
                      "Egg 6",
                      style: TextFontStyle.headline045B30text.copyWith(
                        color: _isSelected6 ? AppColors.cFFFFFF : AppColors.borderColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
