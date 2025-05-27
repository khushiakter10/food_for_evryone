import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';
import '../../../gen/assets.gen.dart';

class FileTextScreen extends StatefulWidget {
  const FileTextScreen({super.key});

  @override
  State<FileTextScreen> createState() => _FileTextScreenState();
}

class _FileTextScreenState extends State<FileTextScreen> {
  // List to store the added text widgets and their cross status
  List<Map<String, dynamic>> textWidgets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(100.h), // Space before the first container
            // First container with vertical space before it
            Padding(
              padding: EdgeInsets.only(bottom: 16.h), // Space before the first container
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Row(
                  children: [
                    Text("Shopping", style: TextStyle(color: Colors.grey)),
                    Spacer(),
                    Text("No", style: TextStyle(color: Colors.grey)), // "No" added here
                    SizedBox(width: 7.w),
                    GestureDetector(
                      onTap: () {
                        // On tap, add a new text widget to the list with cross status
                        setState(() {
                          textWidgets.add({
                            'text': "Shopping",
                            'isCrossed': false, // Initial status is not crossed
                          });
                        });
                      },
                      child: Image.asset(
                        Assets.icons.arrw.path,
                        height: 10.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Display the list of added text and icons with vertical space
            Column(
              children: textWidgets.map((item) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: GestureDetector(
                    onTap: () {
                      // Toggle the cross status on click
                      setState(() {
                        item['isCrossed'] = !item['isCrossed'];
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        children: [
                          Text(
                            item['text'],
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: item['isCrossed']
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "No",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(width: 7.w),
                          Image.asset(Assets.images.full.path,height: 34.h,)
                          // Image.asset(
                          //   Assets.icons.arrw.path,
                          //   height: 10.h,
                          // ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
