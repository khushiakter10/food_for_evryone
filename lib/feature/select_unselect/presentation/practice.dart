import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaffoldWithFloatingNavbar extends StatefulWidget {
  const ScaffoldWithFloatingNavbar({super.key});

  @override
  _ScaffoldWithFloatingNavbarState createState() =>
      _ScaffoldWithFloatingNavbarState();
}

class _ScaffoldWithFloatingNavbarState extends State<ScaffoldWithFloatingNavbar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Selected index: $_currentIndex',
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        onTap: (int val) {
          setState(() {
            _currentIndex = val;
          });
        },
        currentIndex: _currentIndex,
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
            title: 'Home',
          ),
          FloatingNavbarItem(
            icon: Icons.exit_to_app,
            title: 'Explore',
          ),
          FloatingNavbarItem(
            icon: Icons.settings,
            title: 'Chats',
          ),
          FloatingNavbarItem(
            icon: Icons.safety_check,
            title: 'Settings',
          ),
        ],
      ),
    );
  }
}
