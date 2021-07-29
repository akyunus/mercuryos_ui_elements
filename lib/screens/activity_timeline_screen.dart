import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri_screen.dart';
import 'package:mercuryos_ui_elements/core/locus_bar/locus_bar.dart';

class ActivityTimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return KiriScreen(
      children: [
        LocusBar(
          backgroundColor: DefaultColorTheme.locusBackgroundColordark,
        ),
        Positioned(
          top: 50,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 300,
                  decoration: BoxDecoration(
                      color: DefaultColorTheme.spaceCardBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Yesterday',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 300,
                  decoration: BoxDecoration(
                      color: DefaultColorTheme.spaceCardBackgroundColor,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                TextButton(
                  child: Text('Back!'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
