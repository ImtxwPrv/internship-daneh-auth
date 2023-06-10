import 'package:flutter/material.dart';

class flutterPage extends StatefulWidget {
  const flutterPage({Key? key}) : super(key: key);

  @override
  State<flutterPage> createState() => _flutterPageState();
}

class _flutterPageState extends State<flutterPage> {
  static _loadSettings() async {
    print("starting loading settings");
    await Future.delayed(Duration(seconds: 1));
    print("finished loading settings");
  }
  // @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('data'),
    
      ),
    );
  }
  }   