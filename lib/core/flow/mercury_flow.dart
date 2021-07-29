import 'package:flutter/widgets.dart';
import 'package:mercuryos_ui_elements/core/module/mercury_module.dart';

/// [MercuryFlow] is a container for [MercuryModule]s
class MercuryFlow extends StatelessWidget {
  const MercuryFlow({Key? key, this.modules = const [], this.name = 'New Flow'})
      : super(key: key);

  final List<MercuryModule> modules;
  final String name;
  @override
  Widget build(BuildContext context) {
    //if (modules!.isEmpty) { modules.add(ModuleWelcome());}
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemBuilder: (context, i) => modules[i],
      separatorBuilder: (context, i) => SizedBox(width: 20),
      itemCount: modules.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
