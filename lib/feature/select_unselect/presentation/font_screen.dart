import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/assets.gen.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';


class FontScreen extends StatefulWidget {
  const FontScreen({super.key});

  @override
  State<FontScreen> createState() => _FontScreenState();
}

class _FontScreenState extends State<FontScreen> {
  final List<String> image = [
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
    'assets/images/fulimage.jpg',
  ];
  final List<String> text = [
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
    'Softvence',
  ];
  final List<String> khusbu = [
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
    'Mst Khusbu',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColors.cFFFFFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.cFFFFFF,
        title: const Text('Softvence',style: TextStyle(color: Colors.blue)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 15.w),
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: text.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate:
                   const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                  ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100.h,
                        width: 200.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: AssetImage(Assets.images.fulimage.path),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      UIHelper.verticalSpace(7.h),
                      Text(  "Softvence",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center),
                      Text("Mst khusbu",style: TextStyle(fontSize: 14.sp, color: Colors.grey), textAlign: TextAlign.center),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
