import 'package:flutter/material.dart';

class PopupMenuExample extends StatelessWidget {
  const PopupMenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PopupMenuButton "),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text("Selected Option"),
                  content: Text(value),
                ),
              );
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                const PopupMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ];
            },
          ),
        ],
      ),
      body:
      const Center(
        child:
        Text('Click the popup menu'),

      ),
    );
  }
}

