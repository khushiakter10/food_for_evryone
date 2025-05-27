import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  int selectedContainerIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UIHelper.verticalSpace(100.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.w), // Add horizontal space
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedContainerIndex == index) {
                          selectedContainerIndex = -1;
                        } else {
                          selectedContainerIndex = index;
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: selectedContainerIndex == index ? Colors.blue : Colors.grey),
                        color: selectedContainerIndex == index ? Colors.blue.withOpacity(0.2) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "khusbu ${index + 1}",
                          style: TextStyle(
                            color: selectedContainerIndex == index ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
            UIHelper.verticalSpace(8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(3, (index) {
                return Padding(
                  padding: EdgeInsets.only(right: 10.w),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (selectedContainerIndex == index + 3) {
                          selectedContainerIndex = -1;
                        } else {
                          selectedContainerIndex = index + 3;
                        }
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                      margin: EdgeInsets.only(bottom: 10.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: selectedContainerIndex == index + 3 ? Colors.blue : Colors.grey),
                        color: selectedContainerIndex == index + 3 ? Colors.blue.withOpacity(0.2) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "khusbu ${index + 4}",
                          style: TextStyle(
                            color: selectedContainerIndex == index + 3 ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
