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
      home: Kiri(
        child: Space(
          children: <Widget>[
            ModuleWidget(),
            ModuleWidget(),
            ModuleWidget(),
            ModuleWidget(),
          ],
        ),
      ),
    );
  }
}
