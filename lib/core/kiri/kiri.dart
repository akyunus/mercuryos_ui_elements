import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';

class Kiri extends StatelessWidget {
  final Widget? child;
  const Kiri({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: kiriDecorationBackgroundImage,
          ),
          Positioned(
            bottom: -30,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: 60,
              height: 60,
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
        ]));
  }
}

const kiriDecorationGradient = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: [0.00, 0.75, 1.00],
    colors: [
      Color(0xFFCACCD1),
      Color(0xFFC8BCBE),
      Color(0xFFA4A4A4),
    ],
  ),
);

const kiriDecorationBackgroundImage = BoxDecoration(
  image: DecorationImage(
    image: AssetImage("assets/backgrounds/BlankSlateMercuryOSBkg.jpg"),
    fit: BoxFit.cover,
  ),
);

const kiriDecorationSolidColor = BoxDecoration(
  color: Color(0xFFDDDDDD),
);
