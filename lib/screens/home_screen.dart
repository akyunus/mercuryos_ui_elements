import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri_screen.dart';
import 'package:mercuryos_ui_elements/screens/activity_timeline_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KiriScreen(children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning, Jason',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Hero(
              tag: 'MainLocus',
              child: Text(
                'What would you like to do?',
                style: TextStyle(
                  fontSize: 40,
                  color: DefaultColorTheme.locusSecondaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 10,
        left: 0,
        right: 0,
        child: InkWell(
          onTap: () {
            print('TimeLine!');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ActivityTimelineScreen(),
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
            //width: 30,
            height: 30,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              //textBaseline: TextBaseline.ideographic,
              children: [
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      color: DefaultColorTheme.secondaryTextColor,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(
                          Icons.arrow_downward,
                          color: DefaultColorTheme.secondaryTextColor,
                          //size: 25,
                        ),
                      ),
                      TextSpan(
                        text: 'Activity Timeline',
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
