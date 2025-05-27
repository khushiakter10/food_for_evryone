import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import 'carousel-Slider_two.dart';
import 'carousel_slider_screen.dart';

class TabBarExample extends StatefulWidget {
  const TabBarExample({super.key});

  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<TabBarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            UIHelper.verticalSpace(70.h),
            Expanded(
              child: ContainedTabBarView(
                tabs: const [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                ],
                views: const [
                  CarouselSliderTwoScreen(),
                  CarouselSliderScreen(),
                ],
                onChange: (index) {
                  // Handle tab change
                },
                initialIndex: 0,
                tabBarProperties: TabBarProperties(
                  indicator: Decoration.lerp(
                    BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    0.5,
                  ),
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  background: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  height: 50.0,
                  indicatorWeight: 4.0,
                  labelColor: Colors.white,
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
