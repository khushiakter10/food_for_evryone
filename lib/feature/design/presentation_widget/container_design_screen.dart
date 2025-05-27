import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerDesignScrren extends StatefulWidget {
  const ContainerDesignScrren({super.key});

  @override
  State<ContainerDesignScrren> createState() => _ContainerDesignScrrenState();
}

class _ContainerDesignScrrenState extends State<ContainerDesignScrren> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Center(
        child: Container(
          height: 200.h,
          width: 200.w,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2,color: Colors.black),
            boxShadow: [
              BoxShadow(
                color: Colors.red,
                spreadRadius: 25,
                blurRadius: 15,
                offset: Offset(6, 6)
              )
            ]
          ),
          child: Center(
            child: Text("khusbu"),
          ),
        ),
      )
    );
  }
}
