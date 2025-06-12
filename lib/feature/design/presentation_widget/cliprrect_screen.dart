import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class CliprrectScreen extends StatefulWidget {
  const CliprrectScreen({super.key});

  @override
  State<CliprrectScreen> createState() => _CliprrectScreenState();
}

class _CliprrectScreenState extends State<CliprrectScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(100.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 16.w),
            child: Column(
              children: [
                Container(
                  height: 300,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(Assets.images.bagh.path,fit: BoxFit.cover,width: double.infinity,),
                      ),
                      Positioned(
                        right: 20,
                          top: 20,
                          child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset(Assets.icons.apple.path),
                      )
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
