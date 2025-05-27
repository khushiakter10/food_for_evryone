import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../gen/assets.gen.dart';

class CircleAvatarExample extends StatefulWidget {
  const CircleAvatarExample({super.key});

  @override
  State<CircleAvatarExample> createState() => _CircleAvatarExampleState();
}

class _CircleAvatarExampleState extends State<CircleAvatarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(50.h),
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(Assets.images.full.path),
              radius: 50,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
          UIHelper.verticalSpace(20.h),
          CircularProgressIndicator(
            backgroundColor: Colors.pinkAccent,
          )
        ],
      ),
    );
  }
}

