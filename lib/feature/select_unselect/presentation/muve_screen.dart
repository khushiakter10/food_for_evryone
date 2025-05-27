import 'package:flutter/material.dart';

class DeleteTextListScreen extends StatefulWidget {
  @override
  _DeleteTextListScreenState createState() => _DeleteTextListScreenState();
}

class _DeleteTextListScreenState extends State<DeleteTextListScreen> {
  List<String> items = [
    "101 +",
    "102 +",
    "103 +",
    "104 +",
    "105 +",
  ];

  void _deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Delete List Items')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              title: Text(items[index]),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.blue),
                onPressed: () => _deleteItem(index),
              ),
            ),
          );
        },
      ),
    );
  }
}
