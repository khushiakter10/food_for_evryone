import 'package:flutter/material.dart';

class Chexkboxlisttile extends StatefulWidget {
  const Chexkboxlisttile({super.key});

  @override
  State<Chexkboxlisttile> createState() => _ChexkboxlisttileState();
}

class _ChexkboxlisttileState extends State<Chexkboxlisttile> {
  bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CheckboxListTile(
            title: Text("CheckBox"),
            value: ischeck,
            onChanged: (value) {
              setState(() {
                ischeck = value;
              });
            },
            tileColor: Colors.grey,
            activeColor: Colors.red,
            subtitle: Text("khubu"),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}

