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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Activity Timeline'),
              TextButton(
                child: Text('back!'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
