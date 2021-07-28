import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';
import 'package:mercuryos_ui_elements/core/locus_bar/locus_bar.dart';

class ModuleWidget extends StatelessWidget {
  final locusBar;
  final child;
  const ModuleWidget({
    Key? key,
    this.locusBar,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
          color: DefaultColorTheme.moduleBackgroundColor,
          border: Border.all(
            color: Color(0xffFFFFFF),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          LocusBar(),
          this.child ?? Container(),
        ],
      ),
    );
  }
}
