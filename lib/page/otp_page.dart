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
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromRGBO(255, 249, 248, 100),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/Daaneh02.png",
                width: 400,
                height: 400,
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "کد فعال سازی را وارد کنید",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                "تغییر شماره موبایل",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 40,
              ),

                Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 50.0,
                  color: Color.fromRGBO(0, 0, 0, 100),
                ),
              ),
              
              SizedBox(
                height: 60,
              ),
              Text(
                " کد را هنوز دریافت نکرده اید ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 300.0,
                  color: Color.fromRGBO(253, 98, 111, 0.616),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
