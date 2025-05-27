import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';


class CustomSelectedWidget extends StatefulWidget {
  final int numberOfButtons;
  final String labelPrefix;

  const CustomSelectedWidget({
    Key? key,
    this.numberOfButtons = 3,
    this.labelPrefix = "Egg",
  }) : super(key: key);

  @override
  _CustomSelectedWidgetState createState() => _CustomSelectedWidgetState();
}

class _CustomSelectedWidgetState extends State<CustomSelectedWidget> {
  int _selectedIndex = -1;

  void _handleSelection(int index) {
    setState(() {
      if (_selectedIndex == index) {
        _selectedIndex = -1;
      } else {
        _selectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          children: [
            for (int row = 0; row < (widget.numberOfButtons / 3).ceil(); row++) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int col = 0; col < 3; col++) ...[
                    if (row * 3 + col < widget.numberOfButtons)
                      GestureDetector(
                        onTap: () => _handleSelection(row * 3 + col),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 30.w),
                          decoration: BoxDecoration(
                            color: _selectedIndex == row * 3 + col
                                ? AppColors.borderColor
                                : AppColors.bacRoundColor,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: _selectedIndex == row * 3 + col
                                  ? AppColors.borderColor
                                  : AppColors.borderColor,
                            ),
                          ),
                          child: Text(
                            "${widget.labelPrefix} ${row * 3 + col + 1}",
                            style: TextFontStyle.headline045B30text.copyWith(
                              color: _selectedIndex == row * 3 + col
                                  ? AppColors.cFFFFFF
                                  : AppColors.borderColor,
                            ),
                          ),
                        ),
                      ),
                    if (col < 2) UIHelper.horizontalSpace(6.w),
                  ],
                ],
              ),
              if (row < (widget.numberOfButtons / 3).ceil() - 1)
                UIHelper.verticalSpace(10.h),
            ],
          ],
        ),
      ),
    );
  }
}
