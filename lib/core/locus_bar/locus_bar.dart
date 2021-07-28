import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';

class LocusBar extends StatelessWidget {
  const LocusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: DefaultColorTheme.locusBackgroundColor,
    );
  }
}
