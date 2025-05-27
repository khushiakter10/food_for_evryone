import 'package:flutter/material.dart';



class willpop_screen extends StatelessWidget {
  const willpop_screen({super.key});

  Future<bool> _onWillPop(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Exit Confirmation"),
        content: Text("Are you sure you want to exit?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false), // থাকুন
            child: Text("No"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true), // এক্সিট করুন
            child: Text("Yes"),
          ),
        ],
      ),
    ) ??
        false; // ডিফল্টভাবে false (অ্যাপে থাকবেন)
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context), // ব্যাক বাটনে এক্সিট কনফার্মেশন চালু
      child: Scaffold(
        appBar: AppBar(title: const Text("WillPopScope Example")),
        body: const Center(child: Text("Press back button to see confirmation")),
      ),
    );
  }
}
