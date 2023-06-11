import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'Daaneh/otp_page.dart';
// import 'Daaneh/login_page.dart';
// import 'Daaneh/splash_page.dart';
// import 'Daaneh/register_page.dart';
import 'model/sevenlearn_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.red,
        brightness: Brightness.dark,
        dividerTheme: DividerThemeData(
          thickness: 1,
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            headline6: TextStyle(fontWeight: FontWeight.w900),
            bodyText1: TextStyle(fontSize: 22),
            bodyText2: TextStyle(fontSize: 14,color: Color.fromARGB(200, 255, 255, 255)),
            subtitle1: TextStyle(fontWeight: FontWeight.w900),
            subtitle2: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      home: SevenlearnPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum _SkillType{
  ajax,juventus,inter,barcelona,milan,paris,manchester,galaxy,
}

class _MyHomePageState extends State<MyHomePage> {
  _SkillType _skill= _SkillType.ajax;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }
}
