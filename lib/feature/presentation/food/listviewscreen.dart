import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,  // Set the number of items in the list
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10.h),
            ),
            margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
            child: Column(
              children: [
                // Image container
                Container(
                  height: 100.h,
                  width: double.infinity, // Make the image take the full width
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.h),
                      topRight: Radius.circular(10.r),
                    ),
                    image: DecorationImage(
                      image: AssetImage(Assets.images.bagh.path),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 10.w, top: 5.h),
                      child: Image.asset(
                        Assets.images.men.path,
                        height: 26.h,
                      ),
                    ),
                  ),
                ),

                // Text container
                Container(
                  padding: EdgeInsets.all(10.w),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("khushi", style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                      UIHelper.verticalSpace(2.h),
                      Text("khusbu", style: TextStyle(fontSize: 14.sp)),
                      Row(
                        children: [
                          Text('bd calling', style: TextStyle(fontSize: 12.sp)),
                          UIHelper.horizontalSpace(10.w),
                          Text('khusu', style: TextStyle(fontSize: 12.sp)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
