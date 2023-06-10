import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Daaneh/otp_page.dart';
import 'Daaneh/login_page.dart';
import 'Daaneh/splash_page.dart';
import 'Daaneh/register_page.dart';
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
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            headline6: TextStyle(fontWeight: FontWeight.w900),
            bodyText1: TextStyle(fontSize: 22),
            bodyText2: TextStyle(fontSize: 16),
            subtitle1: TextStyle(fontWeight: FontWeight.w900),
            subtitle2: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      home: SevenlearnPage(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage("assets/01.jpeg"), fit: BoxFit.fill),
//           ),
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: const Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Image(
//                   image: AssetImage("assets/6888606.jpg"),
//                   width: 150,
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(12),
//                 child: SizedBox(
//                   height: 60,
//                   width: 170,
//                   child: Card(
//                     shape: ContinuousRectangleBorder(
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(50),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.all(10),
//                 child: SizedBox(
//                   height: 350,
//                   width: 350,
//                   child: Card(
//                     elevation: 3,
//                     child: Center(
//                       child: Text(
//                         "توضیحات دوره ",
//                         style: TextStyle(
//                           color: Color.fromARGB(255, 65, 65, 65),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 24,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
