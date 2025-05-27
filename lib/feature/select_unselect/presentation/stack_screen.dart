import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(100.h),
            Stack(
              children: [
                Container(
                  height: 90.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(200.r),
                      border: Border.all(color: Colors.grey),
                      image: DecorationImage(image: AssetImage(Assets.images.men.path),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                Positioned(
                  bottom: 10,  // This places the image directly on the container's bottom border
                  right: 0,   // This places the image directly on the container's right border
                  child: CircleAvatar(
                    radius: 20.r, // Adjusted radius to ensure the image is fully visible
                    backgroundImage: AssetImage(Assets.images.bagh.path),
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
