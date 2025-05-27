import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

import '../../../gen/assets.gen.dart';

class AlartdilogScreen extends StatefulWidget {
  const AlartdilogScreen({super.key});

  @override
  State<AlartdilogScreen> createState() => _AlartdilogScreenState();
}

class _AlartdilogScreenState extends State<AlartdilogScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          UIHelper.verticalSpace(50.h),
          Center(
            child: ElevatedButton(onPressed: (){
              showDialog(context: context,
                  builder: (context){
                return Dialog(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 200,
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UIHelper.verticalSpace(30.h),
                            const Text(
                              'khusbu',
                              style: TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            UIHelper.verticalSpace(10.h),
                            const Text(
                              'Britain. The namesake of the language is the Angles, one of the Germanic peoples that '
                                  'English is a West Germanic language in the Indo-European language family, whose',
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -50,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(Assets.images.fulimage.path),
                        ),
                      ),

                    ],
                  ),

                );
                  });
            }, child: Text('alartdilog',)),
          )
        ],
      ),
    );
  }
}
