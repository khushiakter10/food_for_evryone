import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class ContainerDesign extends StatefulWidget {
  const ContainerDesign({super.key});

  @override
  State<ContainerDesign> createState() => _ContainerDesignState();
}

class _ContainerDesignState extends State<ContainerDesign> {
  final List<String> images = List.generate(10, (_) => Assets.images.bagh.path);
  final List<String> icons = List.generate(10, (_) => Assets.icons.apple.path);
  final List<String> titles = List.generate(10, (_) => 'Khushi');
  final List<String> subtitles = List.generate(10, (_) => 'Khusbu');
  final List<String> bdtexts = List.generate(10, (_) => 'Bd Calling');
  final List<String>  text = List.generate(10, (_)=> 'bugh');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
        child: GridView.builder(
          itemCount: titles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 columns
            crossAxisSpacing: 11.w,
            mainAxisSpacing: 8.h,
            childAspectRatio: 0.8, // Adjusted for better fit
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  // Image Container
                  Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                      ),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 5.h),
                        child: Image.asset(
                          icons[index],
                          height: 26.h,
                        ),
                      ),
                    ),
                  ),
                  // Text Container
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.r),
                          bottomRight: Radius.circular(10.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(titles[index], style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                          UIHelper.verticalSpace(2.h),
                          Text(subtitles[index], style: TextStyle(fontSize: 14.sp)),
                          UIHelper.verticalSpace(4.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(bdtexts[index], style: TextStyle(fontSize: 12.sp)),
                              Text("khusbu"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
