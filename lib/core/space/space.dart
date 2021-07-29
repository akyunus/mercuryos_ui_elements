import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/space/add_space_button.dart';

class Space extends StatelessWidget {
  final List<Widget> flows;
  const Space({Key? key, required this.flows}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, i) => flows[i],
        separatorBuilder: (context, i) => SizedBox(width: 20),
        itemCount: flows.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
