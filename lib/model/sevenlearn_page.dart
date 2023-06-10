import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';


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
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(32),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/sevenlearn01.jpeg',
                  width: 80,
                  height: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Zlatan Ibrahimović',
                    style: Theme.of(context).textTheme.subtitle1
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text('Professional Footballer'),
                    SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Icon(CupertinoIcons.location_solid,
                        size: 18, ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Malmö, Sweden',
                        style: Theme.of(context).textTheme.subtitle2,)
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
          child: Text(
              'Zlatan Ibrahimović born 3 October 1981 is a Swedish professional footballer who plays as a striker for Serie A club AC Milan. Ibrahimović is renowned for his acrobatic strikes and volleys, powerful long-range shots, and excellent technique and ball control.'),
        )
      ]),
    );
  }
}
