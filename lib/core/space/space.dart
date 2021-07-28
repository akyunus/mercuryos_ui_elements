import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final List<Widget> children;
  const Space({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, i) => children[i],
      separatorBuilder: (context, i) => SizedBox(width: 20),
      itemCount: children.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
