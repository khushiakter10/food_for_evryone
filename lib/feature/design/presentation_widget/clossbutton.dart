import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/assets.gen.dart';
import 'package:training_app/helpers/ui_helpers.dart';





class CloseButtonExample extends StatefulWidget {
  const CloseButtonExample({super.key});

  @override
  State<CloseButtonExample> createState() => _CloseButtonExampleState();
}

class _CloseButtonExampleState extends State<CloseButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Close Button Example"),
      ),
      body: Column(
        children: [
          Center(
            child: CloseButton(
              onPressed: () {
              },
              color: Colors.orange,
            ),
          ),
          UIHelper.verticalSpace(20.h),

          ColoredBox(color:  Colors.red,
            child: Container(
              height: 100.h,
              width: 100.w,
            ),
          ),
          UIHelper.verticalSpace(20.h),
          ColorFiltered(colorFilter: ColorFilter.mode( Colors.blue,BlendMode.color ),
            child: Image.asset(Assets.images.stp.path),
          ),
          UIHelper.verticalSpace(20.h),


        ],
      ),
    );
  }
}
