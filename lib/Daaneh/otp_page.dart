import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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