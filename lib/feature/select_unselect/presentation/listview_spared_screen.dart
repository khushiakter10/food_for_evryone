 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/feature/select_unselect/widget/custom_design_Widget.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';

class ListviewSparedScreen extends StatefulWidget {
  const ListviewSparedScreen({super.key});

  @override
  State<ListviewSparedScreen> createState() => _ListviewSparedScreenState();
}

class _ListviewSparedScreenState extends State<ListviewSparedScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(70.h),

            ListView.separated(
              itemCount: 100,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              controller: ScrollController(),
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return  CustomDesignWidget(
                  image1: AssetImage(Assets.images.clg.path),
                  image2: AssetImage(Assets.images.village.path),
                );
              },
              separatorBuilder: (context,index) {
                return UIHelper.verticalSpace(10.h);
              },
            )
          ],
        ),
      ),
    );
  }
}
