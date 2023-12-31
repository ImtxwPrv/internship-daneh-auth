import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                height: 100,
              ),
              const Text(
                "ورود شماره موبایل",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  elevation: 5,
                  color: const Color.fromRGBO(254, 192, 192, 1),
                  child: const Center(
                    child: Text(
                      " دریافت کد ",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 50),
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
