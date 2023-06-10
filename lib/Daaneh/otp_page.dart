import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  static _loadSettings() async {
    print("starting loading settings");
    await Future.delayed(const Duration(seconds: 1));
    print("finished loading settings");
  }
  // @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(255, 249, 248, 100),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/Daaneh02.png",
                width: 400,
                height: 400,
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "کد فعال سازی را وارد کنید",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Hiva',
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child:
              Text(
                "تغییر شماره موبایل",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric (horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 50.0,
                  color: const Color.fromRGBO(0, 0, 0, 100),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
                " کد را هنوز دریافت نکرده اید ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 300.0,
                  color: const Color.fromRGBO(253, 98, 111, 0.616),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
