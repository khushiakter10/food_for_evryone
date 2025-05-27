// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:training_app/helpers/ui_helpers.dart';
//
// import '../../../gen/assets.gen.dart';
//
// class ContainerDesign extends StatefulWidget {
//   const ContainerDesign({super.key});
//
//   @override
//   State<ContainerDesign> createState() => _ContainerDesignState();
// }
//
// class _ContainerDesignState extends State<ContainerDesign> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           UIHelper.verticalSpace(100.h),
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(10.h),
//                 topRight: Radius.circular(10.r),
//               ),
//             ),
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       height: 100.h,
//                       width: 100.h,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(10.h),
//                           topRight: Radius.circular(10.r),
//                         ),
//                         image: DecorationImage(
//                           image: AssetImage(Assets.images.bagh.path),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       top: 10.h,  // Move the image higher
//                       right: 10.w,  // Position it to the right
//                       child: Image.asset(
//                         Assets.images.men.path,
//                         height: 26.h,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
