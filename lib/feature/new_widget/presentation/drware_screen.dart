import 'package:flutter/material.dart';

class DrwareScreen extends StatefulWidget {
  const DrwareScreen({super.key});

  @override
  State<DrwareScreen> createState() => _DrwareScreenState();
}

class _DrwareScreenState extends State<DrwareScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: _globalKey,
      //endDrawer: Drawer(dan pase),
      drawer: Drawer(),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          _globalKey.currentState?.openDrawer();
        }, icon: Icon(Icons.arrow_back_ios),
        )
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }
}
