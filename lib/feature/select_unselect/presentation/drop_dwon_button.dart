import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/gen/colors.gen.dart';

class DropdownExample extends StatefulWidget {
  const DropdownExample({super.key});

  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DropdownButton Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              width: 200.w,
              height: 50.h,
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Colors.grey),
              ),
              child: DropdownButton<String>(
                value: _selectedValue,
                hint: const Text("Select an option"),
                isExpanded: true,
                items: const [
                  DropdownMenuItem<String>(
                    value: 'Option 1',
                    child:
                        Row(
                          children: [
                            Icon(Icons.settings),
                            Spacer(),
                            Text('Setting'),
                          ],
                        )

                  ),
                  DropdownMenuItem<String>(
                    value: 'Option 2',
                    child: Row(
                      children: [
                        Icon(Icons.camera_alt),
                        Spacer(),
                        Text('Camera'),
                      ],
                    )
                  ),
                  DropdownMenuItem<String>(
                    value: 'Option 3',
                    child: Row(
                      children: [
                        Icon(Icons.call),
                        Spacer(),
                        Text('Call'),
                      ],
                    )
                  ),
                  DropdownMenuItem<String>(
                    value: 'Option 4',
                    child: Row(
                      children: [
                        Icon(Icons.not_listed_location_outlined),
                        Spacer(),
                        Text('Location'),
                      ],
                    )
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
