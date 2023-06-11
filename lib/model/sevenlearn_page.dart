import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:get/utils.dart';

class SevenlearnPage extends StatelessWidget {
  const SevenlearnPage({Key? key}) : super(key: key);

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
                            // color: Theme.of(context),textTheme.bodyText2!.color,
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
                // color: Theme.of(context).primaryColor,
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
                  title: 'Ajax',
                  imagepath: 'assets/team01.png',
                  shadowcColor: Colors.redAccent.shade400,
                  isActive: true),
              Skill(
                  title: 'Juventus',
                  imagepath: 'assets/team02.webp',
                  shadowcColor: Colors.black,
                  isActive: true),
              Skill(
                  title: 'Inter',
                  imagepath: 'assets/team03.webp',
                  shadowcColor: Colors.blueGrey,
                  isActive: true),
              Skill(
                  title: 'Barcelona',
                  imagepath: 'assets/team04.png',
                  shadowcColor: Colors.yellowAccent,
                  isActive: true),
              Skill(
                  title: 'Milan',
                  imagepath: 'assets/team05.png',
                  shadowcColor: Colors.redAccent,
                  isActive: true),
              Skill(
                  title: 'Paris',
                  imagepath: 'assets/team06.png',
                  shadowcColor: Colors.blueAccent.shade700,
                  isActive: true),
              Skill(
                  title: 'Manchester',
                  imagepath: 'assets/team07.webp',
                  shadowcColor: Colors.redAccent,
                  isActive: true),
              Skill(
                  title: 'Galaxy',
                  imagepath: 'assets/team08.png',
                  shadowcColor: Colors.redAccent,
                  isActive: true),
            ],
          ),
        ),
      ]),
    );
  }
}

class Skill extends StatefulWidget {
  final String title;
  final String imagepath;
  final Color shadowcColor;
  final bool isActive;

  const Skill({
    super.key,
    required this.title,
    required this.imagepath,
    required this.shadowcColor,
    required this.isActive,
  });
  
  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: widget.isActive
          ? BoxDecoration(
              color: Color.fromARGB(20, 255, 255, 255),
              borderRadius: BorderRadius.circular(16))
          : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            widget.imagepath,
            height: 70,
            width: 70,
          ),
          SizedBox(height: 7),
          Text(
            widget.title,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
