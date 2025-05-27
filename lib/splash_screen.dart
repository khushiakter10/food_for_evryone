import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/common_widgets/custom_button.dart';
import 'package:training_app/constants/text_font_style.dart';
import 'package:training_app/gen/colors.gen.dart';
import 'package:training_app/helpers/all_routes.dart';
import 'package:training_app/helpers/navigation_service.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import 'gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.images.splascreen.path),
                fit: BoxFit.cover)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
          child: Column(
            children: [
              UIHelper.verticalSpace(50.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.w),
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.h, horizontal: 21.w),
                        decoration: BoxDecoration(
                            color: AppColors.cFFFFFF,
                            borderRadius: BorderRadius.circular(120.r)),
                        child: Image.asset(
                          Assets.images.fullimage.path,
                          height: 24.h,
                        )),
                  ],
                ),
              ),
              UIHelper.verticalSpace(25.h),
              Image(
                image: AssetImage(Assets.images.foodForEveryone.path),
                height: 100.h,
              ),
              UIHelper.verticalSpace(430.h),
              customeButton(
                borderColor: Colors.transparent,
                  name: "Get starteed",
                  onCallBack: (){
                  NavigationService.navigateTo(Routes.fontScreen);
                  },
                  height: 55.h,
                  minWidth:300.w,
                  borderRadius: 30.r,
                  color: AppColors.cFFFFFF,
                  textStyle:TextFontStyle.headlineFF460A,
                  context: context)
            ],
          ),
        ),
      ),
    );
  }
}
