import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_app/helpers/ui_helpers.dart';

class CrossScreen extends StatefulWidget {
  const CrossScreen({super.key});

  @override
  State<CrossScreen> createState() => _CrossScreenState();
}

class _CrossScreenState extends State<CrossScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Column(
        children: [
          UIHelper.verticalSpace(60.h),
          Center(
            child: Chip(
              label: Text("hello how are you"),
              onDeleted: (){

              },
            ),

          ),
          ChoiceChip(label: Text("choiceChip"),
              selectedColor: Colors.blue,
              selected: isSelected,onSelected: (value){
            setState(() {
              isSelected = value;
            });
            },)
        ],
      )
    );
  }
}
