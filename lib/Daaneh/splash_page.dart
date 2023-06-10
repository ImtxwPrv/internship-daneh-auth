import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {


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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/Daaneh01.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height / 14,
                width: (MediaQuery.of(context).size.width / 4) * 3,
                child: Card(
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  color: const Color.fromARGB(213, 69, 6, 196),
                  elevation: 5,
                  child: const Center(
                    child: Text(
                      " !به اپلیکیشن دانه خوش آمدی",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
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
