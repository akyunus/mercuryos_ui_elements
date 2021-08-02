import 'package:flutter/material.dart';
import 'package:mercuryos_ui_elements/core/color_constants.dart';

class SpaceTimelineCard extends StatelessWidget {
  final String spaceName;
  final String lastUpdated;
  final List<Icon> moduleIcons;
  final String subInfo;
  final String thumbnailImage;
  const SpaceTimelineCard({
    Key? key,
    required this.lastUpdated,
    required this.spaceName,
    required this.moduleIcons,
    required this.subInfo,
    this.thumbnailImage: 'assets/ui-designs/module_map.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: DefaultColorTheme.spaceCardBackgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: AspectRatio(
        aspectRatio: 2,
        child: Align(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Flex(
              mainAxisSize: MainAxisSize.min,
              direction: Axis.horizontal,
              children: [
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(spaceName,
                              style: Theme.of(context).textTheme.headline5),
                        ),
                        FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Text(lastUpdated),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Wrap(
                                  children: moduleIcons,
                                ))),
                        Divider(),
                        FittedBox(
                          fit: BoxFit.fill,
                          child: Text(subInfo),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(thumbnailImage),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
