import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import 'package:video_player/video_player.dart';

import '../../../gen/assets.gen.dart';

class ListViewvedioScreen extends StatefulWidget {
  const ListViewvedioScreen({super.key});

  @override
  State<ListViewvedioScreen> createState() => _ListViewvedioScreenState();
}

class _ListViewvedioScreenState extends State<ListViewvedioScreen> {
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.networkUrl(
        Uri.parse('https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4'),
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

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
                // Video player container
                Container(
                  height: 200.h,  // Set the height for the video player
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.h),
                      topRight: Radius.circular(10.r),
                    ),
                  ),
                  child: FlickVideoPlayer(
                    flickManager: flickManager,
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
                          Spacer(),
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
