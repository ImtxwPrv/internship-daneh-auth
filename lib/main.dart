import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
// import 'Daaneh/otp_page.dart';
// import 'Daaneh/login_page.dart';
// import 'Daaneh/splash_page.dart';
// import 'Daaneh/register_page.dart';

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
            bodyText2: TextStyle(
                fontSize: 14, color: Color.fromARGB(200, 255, 255, 255)),
            subtitle1: TextStyle(fontWeight: FontWeight.w900),
            subtitle2: TextStyle(fontWeight: FontWeight.w300),
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum _SkillType {
  ajax,
  juventus,
  inter,
  barcelona,
  milan,
  paris,
  manchester,
  galaxy,
  //camel case
}

class _MyHomePageState extends State<MyHomePage> {
  _SkillType _skill = _SkillType.ajax;
  void updateSelectedSkill(_SkillType skillType) {
    setState(() {
      this._skill = skillType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SOCCER STARS'),
        actions: [
          Icon(CupertinoIcons.chat_bubble),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/zlatan01.jpeg',
                  width: 80,
                  height: 80,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Zlatan Ibrahimović',
                          style: Theme.of(context).textTheme.subtitle1),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        'Professional Footballer',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.location_solid,
                            size: 18,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Malmö, Sweden',
                            style: Theme.of(context).textTheme.bodyText2,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Icon(
                CupertinoIcons.heart,
                color: Colors.red,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
          child: Text(
              'Zlatan Ibrahimović born 3 October 1981 is a Swedish professional footballer who plays as a striker for Serie A club AC Milan. Ibrahimović is renowned for his acrobatic strikes and volleys, powerful long-range shots, and excellent technique and ball control.'),
        ),
        Divider(),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('TEAMS', style: Theme.of(context).textTheme.subtitle1),
              SizedBox(width: 3),
              Icon(
                CupertinoIcons.chevron_down_circle,
                size: 16,
              ),
            ],
          ),
        ),
        Center(
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            direction: Axis.horizontal,
            children: [
              Skill(
                type: _SkillType.ajax,
                title: 'Ajax',
                imagepath: 'assets/team01.png',
                shadowcColor: Colors.redAccent.shade400,
                isActive: _skill == _SkillType.ajax,
                onTap: () {
                  updateSelectedSkill(_SkillType.ajax);
                },
              ),
              Skill(
                type: _SkillType.juventus,
                title: 'Juventus',
                imagepath: 'assets/team02.webp',
                shadowcColor: Colors.black,
                isActive: _skill == _SkillType.juventus,
                onTap: () {
                  updateSelectedSkill(_SkillType.juventus);
                },
              ),
              Skill(
                type: _SkillType.inter,
                title: 'Inter',
                imagepath: 'assets/team03.webp',
                shadowcColor: Colors.blueGrey,
                isActive: _skill == _SkillType.inter,
                onTap: () {
                  updateSelectedSkill(_SkillType.inter);
                },
              ),
              Skill(
                type: _SkillType.barcelona,
                title: 'Barcelona',
                imagepath: 'assets/team04.png',
                shadowcColor: Colors.yellowAccent,
                isActive: _skill == _SkillType.barcelona,
                onTap: () {
                  updateSelectedSkill(_SkillType.barcelona);
                },
              ),
              Skill(
                type: _SkillType.milan,
                title: 'Milan',
                imagepath: 'assets/team05.png',
                shadowcColor: Colors.redAccent,
                isActive: _skill == _SkillType.milan,
                onTap: () {
                  updateSelectedSkill(_SkillType.milan);
                },
              ),
              Skill(
                type: _SkillType.paris,
                title: 'Paris',
                imagepath: 'assets/team06.png',
                shadowcColor: Colors.blueAccent.shade700,
                isActive: _skill == _SkillType.paris,
                onTap: () {
                  updateSelectedSkill(_SkillType.paris);
                },
              ),
              Skill(
                type: _SkillType.manchester,
                title: 'Manchester',
                imagepath: 'assets/team07.webp',
                shadowcColor: Colors.redAccent,
                isActive: _skill == _SkillType.manchester,
                onTap: () {
                  updateSelectedSkill(_SkillType.manchester);
                },
              ),
              Skill(
                type: _SkillType.galaxy,
                title: 'Galaxy',
                imagepath: 'assets/team08.png',
                shadowcColor: Colors.redAccent,
                isActive: _skill == _SkillType.galaxy,
                onTap: () {
                  updateSelectedSkill(_SkillType.galaxy);
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class Skill extends StatelessWidget {
  final _SkillType type;
  final String title;
  final String imagepath;
  final Color shadowcColor;
  final bool isActive;
  final Function() onTap;
  const Skill({
    Key? key,
    required this.type,
    required this.title,
    required this.imagepath,
    required this.shadowcColor,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BorderRadius defaultBorderRadius = BorderRadius.circular(16);

    return InkWell(
      borderRadius: defaultBorderRadius,
      onTap: onTap,
      child: Container(
        width: 110,
        height: 110,
        decoration: isActive
            ? BoxDecoration(
                color: Color.fromARGB(20, 255, 255, 255),
                borderRadius: defaultBorderRadius,
              )
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isActive?BoxDecoration(boxShadow: [
                BoxShadow(color: shadowcColor.withOpacity(0.3), blurRadius: 20)
              ]):null,
              child: Image.asset(
                imagepath,
                height: 70,
                width: 70,
              ),
            ),
            SizedBox(height: 6),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
