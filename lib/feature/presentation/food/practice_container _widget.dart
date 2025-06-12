import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PracticeContainer extends StatefulWidget {
  const PracticeContainer({super.key});

  @override
  State<PracticeContainer> createState() => _PracticeContainerState();
}

class _PracticeContainerState extends State<PracticeContainer> {
  bool _isTextVisible = false;
  List<String> texts = [
    "First text",
    "Second text",
    "Third text",
    "Fourth text",
    "Fifth text"
  ]; // List of texts

  void _toggleTextVisibility() {
    setState(() {
      _isTextVisible = !_isTextVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Toggle Example"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 100.h),
            GestureDetector(
              onTap: _toggleTextVisibility,
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                child: Center(
                  child: Text("Click to Show Texts", style: TextStyle(color: Colors.blue)),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            // Show texts only if _isTextVisible is true
            if (_isTextVisible)
              Expanded(
                child: ListView.builder(
                  itemCount: texts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Text(
                        texts[index],
                        style: TextStyle(fontSize: 16.sp, color: Colors.black),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
