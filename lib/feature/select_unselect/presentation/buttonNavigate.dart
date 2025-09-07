// import 'package:flutter/material.dart';
// import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class ScaffoldWithFloatingNavbar extends StatefulWidget {
//   const ScaffoldWithFloatingNavbar({super.key});
//
//   @override
//   _ScaffoldWithFloatingNavbarState createState() =>
//       _ScaffoldWithFloatingNavbarState();
// }
//
// class _ScaffoldWithFloatingNavbarState extends State<ScaffoldWithFloatingNavbar> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
//           child: Column(
//             children: [
//               Center(
//                 child: Text(
//                   'Selected index: $_currentIndex',
//                   style: const TextStyle(fontSize: 24),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: FloatingNavbar(
//         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
//         onTap: (int val) {
//           setState(() {
//             _currentIndex = val;
//           });
//         },
//         currentIndex: _currentIndex,
//         items: [
//           FloatingNavbarItem(
//             icon: Icons.home,
//             title: 'Home',
//           ),
//           FloatingNavbarItem(
//             icon: Icons.exit_to_app,
//             title: 'Explore',
//           ),
//           FloatingNavbarItem(
//             icon: Icons.settings,
//             title: 'Chats',
//           ),
//           FloatingNavbarItem(
//             icon: Icons.safety_check,
//             title: 'Settings',
//           ),
//         ],
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaffoldWithCustomNavbar extends StatefulWidget {
  const ScaffoldWithCustomNavbar({super.key});

  @override
  State<ScaffoldWithCustomNavbar> createState() => _ScaffoldWithCustomNavbarState();
}

class _ScaffoldWithCustomNavbarState extends State<ScaffoldWithCustomNavbar> {
  int _currentIndex = 0;

  final List<IconData> _icons = [
    Icons.home,
    Icons.exit_to_app,
    Icons.settings,
    Icons.safety_check,
  ];

  final List<String> _titles = [
    'Home',
    'Explore',
    'Chats',
    'Settings',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(
            'Selected index: $_currentIndex',
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 24.w),
        color: Colors.transparent, // কোনো background নেই
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_icons.length, (index) {
            bool isSelected = _currentIndex == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    _icons[index],
                    color: isSelected ? Colors.blue : Colors.grey,
                    size: isSelected ? 28.sp : 24.sp,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    _titles[index],
                    style: TextStyle(
                      fontSize: isSelected ? 14.sp : 12.sp,
                      color: isSelected ? Colors.blue : Colors.grey,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}




