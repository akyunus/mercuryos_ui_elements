import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/kiri/kiri.dart';
import 'package:mercuryos_ui_elements/core/module_widget/module_widget.dart';
import 'package:mercuryos_ui_elements/core/space/space.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mercury Os UI Elements',
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Kiri(
        child: Space(
          flows: <Widget>[
            ModuleWidget(),
          ],
        ),
      ),
    );
  }
}
