import 'package:flutter/material.dart';
import 'package:training_app/helpers/ui_helpers.dart';

class TextButtonExample extends StatefulWidget {
  const TextButtonExample({super.key});

  @override
  State<TextButtonExample> createState() => _TextButtonExampleState();
}

class _TextButtonExampleState extends State<TextButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(
            children: [
              UIHelper.verticalSpace(50),
              Center(
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.cyan)
                  ),
                  onPressed: () {
                    print("Button Pressed");
                  },
                  child: InkWell(
                    onTap: (){},
                    child: const Text(
                      "Button",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
          onPressed: (){

      }),

    );
  }
}
