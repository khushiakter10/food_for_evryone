import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../gen/colors.gen.dart';

class CarouselSliderTwoScreen extends StatefulWidget {
  const CarouselSliderTwoScreen({super.key});

  @override
  State<CarouselSliderTwoScreen> createState() => _CarouselSliderTwoScreenState();
}

class _CarouselSliderTwoScreenState extends State<CarouselSliderTwoScreen> {
  final List<String> image = List.generate(7, (index) => 'assets/images/village.jpg');
  final List<String> data = List.generate(7, (index) => 'Village');
  final List<String> text = List.generate(7, (index) => 'So beautiful');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        child: Column(
          children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(30.r),
            child:  CarouselSlider(
              items: image.map((imageUrl) {
                return Container(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        imageUrl,
                        width: double.infinity,
                        height: 200.h,
                        fit: BoxFit.cover,
                      ),
                      // Text placed on top of the image
                      Positioned(
                        bottom: 20.h,
                        left: 20.w,
                        child: Text(
                          'Sample Text',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.h,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                autoPlay: true,
                enableInfiniteScroll: true,
                pageSnapping: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
              ),
            ),
          ),
            UIHelper.verticalSpace(20.h),
            GridView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 15.w,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color:  Colors.grey,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        // height: 120.h,
                        // width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: AssetImage(image[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // height: 140,
                          width: 200,
                          decoration: BoxDecoration(
                            color: AppColors.cFFFFFF, //AppColors.borderColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index],
                                  style: TextStyle(
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  text[index],
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
