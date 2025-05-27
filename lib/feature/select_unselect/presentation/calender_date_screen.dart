import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import 'custom_calender_widget.dart';


class CalenderDateScreen extends StatefulWidget {
  const CalenderDateScreen({super.key});

  @override
  State<CalenderDateScreen> createState() => _CalenderDateScreenState();
}

class _CalenderDateScreenState extends State<CalenderDateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          child: Column(
            children: [
              UIHelper.verticalSpace(100.h),
              Center(
                child:  CustomCalendarWidget(
                ),
              )
              ,
            ],
          ),
        )

    );
  }
}
