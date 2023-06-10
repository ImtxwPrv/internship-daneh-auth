import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
          color: const Color.fromRGBO(255, 249, 248, 1),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(
                "assets/Daaneh03.png",
                width: 380,
                height: 380,
              ),
              const Text(
                " ثبت نام ",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Hiva'),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const Card(
                  elevation: 5,
                  shape: Border(
                      right: BorderSide(
                          color: Color.fromRGBO(254, 192, 192, 1), width: 6)),
                  child: Center(
                    child: Text(
                      " نام ",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 150),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const Card(
                  elevation: 5,
                  shape: Border(
                      right: BorderSide(
                          color: Color.fromRGBO(254, 192, 192, 1), width: 6)),
                  child: Center(
                    child: Text(
                      " نام خانوادگی ",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 150),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const Card(
                  elevation: 5,
                  shape: Border(
                      right: BorderSide(
                          color: Color.fromRGBO(254, 192, 192, 1), width: 6)),
                  child: Center(
                    child: Text(
                      " شماره موبایل ",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 150),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
                const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: const Card(
                  elevation: 5,
                  color: Color.fromRGBO(254, 192, 192, 1),
                  child: Center(
                    child: Text(
                      " ثبت ",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
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
