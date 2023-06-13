import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
ThemeMode _themeMode=ThemeMode.dark;
  @override
  Widget build(BuildContext context) {
    Color surfaceColor = Color(0x0fdddddd);
    Color primaryColor = Colors.yellow.shade400;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: _themeMode==ThemeMode.dark
      ?MyAppThemeConfig.dark().getTheme()
      :MyAppThemeConfig.brightness().getTheme(),
      home: MyHomePage(toggleThemeMode: (){
        setState(() {
          if(_themeMode==ThemeMode.dark)
          _themeMode = ThemeMode.light;
          else 
          _themeMode = ThemeMode.dark;
        });
      },),
    );
  }
}

class MyAppThemeConfig {
  final Color primaryColor = Colors.yellow.shade400;
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color surfaceColor;
  final Color backGroundColor;
  final Color appBarColor;
  final Brightness brightness;

  MyAppThemeConfig.dark():
  primaryTextColor=Colors.white,
  secondaryTextColor=Colors.white70,
  surfaceColor=Color(0x0dffffff),
  backGroundColor=Color.fromARGB(255, 30, 30, 30),
  appBarColor=Colors.black,
  brightness=Brightness.dark;

  MyAppThemeConfig.brightness():
  primaryTextColor=Colors.grey.shade900,
  secondaryTextColor=Colors.grey.shade900.withOpacity(0.8) ,
  surfaceColor=Color(0x0d000000),
  backGroundColor=Colors.white,
  appBarColor=Color.fromARGB(255, 235, 235, 235),
  brightness=Brightness.light;

  ThemeData getTheme() {
    return ThemeData(
      primarySwatch: Colors.yellow,
      primaryColor: primaryColor,
      brightness: brightness,
      dividerTheme: DividerThemeData(
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(primaryColor))),
      scaffoldBackgroundColor: backGroundColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: appBarColor,
        foregroundColor: primaryTextColor),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: surfaceColor,
      ),
      textTheme: GoogleFonts.latoTextTheme(
        TextTheme(
          headline6:
              TextStyle(fontWeight: FontWeight.w900, color: primaryColor),
          bodyText1: TextStyle(fontSize: 22, color: primaryTextColor),
          bodyText2: TextStyle(fontSize: 14, color: secondaryTextColor),
          subtitle1:
              TextStyle(fontWeight: FontWeight.w900, color: primaryTextColor),
          subtitle2:
              TextStyle(fontWeight: FontWeight.w300, color: primaryTextColor),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Function() toggleThemeMode;

  const MyHomePage({Key? key, required this.toggleThemeMode}):super(key: key);
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
          InkWell(
            onTap: widget.toggleThemeMode,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  shadowcColor: Color.fromARGB(255, 202, 49, 90),
                  isActive: _skill == _SkillType.ajax,
                  onTap: () {
                    updateSelectedSkill(_SkillType.ajax);
                  },
                ),
                Skill(
                  type: _SkillType.juventus,
                  title: 'Juventus',
                  imagepath: 'assets/team02.webp',
                  shadowcColor: Color.fromARGB(121, 0, 0, 0),
                  isActive: _skill == _SkillType.juventus,
                  onTap: () {
                    updateSelectedSkill(_SkillType.juventus);
                  },
                ),
                Skill(
                  type: _SkillType.inter,
                  title: 'Inter',
                  imagepath: 'assets/team03.webp',
                  shadowcColor: Color.fromARGB(255, 60, 74, 200),
                  isActive: _skill == _SkillType.inter,
                  onTap: () {
                    updateSelectedSkill(_SkillType.inter);
                  },
                ),
                Skill(
                  type: _SkillType.barcelona,
                  title: 'Barcelona',
                  imagepath: 'assets/team04.png',
                  shadowcColor: Color.fromARGB(255, 237, 187, 70),
                  isActive: _skill == _SkillType.barcelona,
                  onTap: () {
                    updateSelectedSkill(_SkillType.barcelona);
                  },
                ),
                Skill(
                  type: _SkillType.milan,
                  title: 'Milan',
                  imagepath: 'assets/team05.png',
                  shadowcColor: Color.fromARGB(255, 255, 60, 60),
                  isActive: _skill == _SkillType.milan,
                  onTap: () {
                    updateSelectedSkill(_SkillType.milan);
                  },
                ),
                Skill(
                  type: _SkillType.paris,
                  title: 'Paris',
                  imagepath: 'assets/team06.png',
                  shadowcColor: Color.fromARGB(255, 0, 118, 192),
                  isActive: _skill == _SkillType.paris,
                  onTap: () {
                    updateSelectedSkill(_SkillType.paris);
                  },
                ),
                Skill(
                  type: _SkillType.manchester,
                  title: 'Manchester',
                  imagepath: 'assets/team07.webp',
                  shadowcColor: Color.fromARGB(255, 255, 33, 70),
                  isActive: _skill == _SkillType.manchester,
                  onTap: () {
                    updateSelectedSkill(_SkillType.manchester);
                  },
                ),
                Skill(
                  type: _SkillType.galaxy,
                  title: 'Galaxy',
                  imagepath: 'assets/team08.png',
                  shadowcColor: Color.fromARGB(255, 255, 218, 70),
                  isActive: _skill == _SkillType.galaxy,
                  onTap: () {
                    updateSelectedSkill(_SkillType.galaxy);
                  },
                ),
              ],
            ),
          ),
          Divider(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 16, 32, 12),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('PERSONAL INFORMATION',
                  style: Theme.of(context).textTheme.subtitle1),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.at),
                  labelText: 'E-mail',
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(CupertinoIcons.lock),
                  labelText: 'Password',
                ),
              ),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(onPressed: () {}, child: Text('Save')),
              ),
            ]),
          ),
        ]),
      ),
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
                boxShadow: [
                    BoxShadow(
                      color: shadowcColor.withOpacity(0.09),
                      spreadRadius: 1,
                    )
                  ])
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: isActive
                  ? BoxDecoration(
                      borderRadius: defaultBorderRadius,
                      // boxShadow: [
                      // BoxShadow(
                      // color: Colors.white.withOpacity(0.08),
                      // offset: Offset(0, 10),
                      // blurRadius: 15,
                      // )
                      // ]
                    )
                  : null,
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
