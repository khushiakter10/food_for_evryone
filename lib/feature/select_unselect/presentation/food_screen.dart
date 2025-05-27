import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import 'custom_design_Widget.dart';


class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(70.h),
            ListView.builder(
              controller: ScrollController(),
              padding: EdgeInsets.zero,
              itemCount: 100,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CustomDesignWidget(),
                    SizedBox(height: 10.h),
                  ],
                );
              },
            )

          ],
        ),
      ),
    );
  }
}


