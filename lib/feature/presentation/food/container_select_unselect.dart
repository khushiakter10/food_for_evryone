import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/container_custom_selecd_unselecd_widget.dart';
import '../../../helpers/ui_helpers.dart';

class Container_SelectUnSelect extends StatefulWidget {
  const Container_SelectUnSelect({super.key});

  @override
  State<Container_SelectUnSelect> createState() => _Container_SelectUnSelectState();
}

class _Container_SelectUnSelectState extends State<Container_SelectUnSelect> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(100.h),

          Row(
            children: [
              CustomContainerTextWidget(
                title: "1 day         ",
                isSelected: selectedIndex == 0,
                onTap: () {
                  setState(() {

                    selectedIndex = (selectedIndex == 0) ? -1 : 0;
                  });
                },
              ),
              UIHelper.horizontalSpace(8.w),
              CustomContainerTextWidget(
                title: "1 -3 day   ",
                isSelected: selectedIndex == 1,
                onTap: () {
                  setState(() {

                    selectedIndex = (selectedIndex == 1) ? -1 : 1;
                  });
                },
              ),
              UIHelper.horizontalSpace(8.w),
              CustomContainerTextWidget(
                title: "4 -7 da     ",
                isSelected: selectedIndex == 2,
                onTap: () {
                  setState(() {

                    selectedIndex = (selectedIndex == 2) ? -1 : 2;
                  });
                },
              ),
            ],
          ),
          UIHelper.verticalSpace(10),
          Row(
            children: [
              CustomContainerTextWidget(
                title: "1 -3 weeks",
                isSelected: selectedIndex == 3,
                onTap: () {
                  setState(() {
                    selectedIndex = (selectedIndex == 3) ? -1 : 3;
                  });
                },
              ),
              UIHelper.horizontalSpace(8.w),
              CustomContainerTextWidget(
                title: "2 -3weeks",
                isSelected: selectedIndex == 4,
                onTap: () {
                  setState(() {
                    selectedIndex = (selectedIndex == 4) ? -1 : 4;
                  });
                },
              ),
              UIHelper.horizontalSpace(8.w),
              CustomContainerTextWidget(
                title: "3 weeks+",
                isSelected: selectedIndex == 5,
                onTap: () {
                  setState(() {
                    selectedIndex = (selectedIndex == 5) ? -1 : 5;
                  });
                },
              ),
            ],
          )



        ],
      ),
    );
  }
}
