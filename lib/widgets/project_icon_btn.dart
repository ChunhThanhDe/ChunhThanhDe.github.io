import 'package:flutter/material.dart';

import '../ui/desktop/widgets/icon_hover.dart';
import '../utils/colors.dart';
import '../utils/constants.dart';

class ProjectIconBtn extends StatelessWidget {
  final IconData icon;
  final String link;
  final double? padding;
  final bool isTablet;

  const ProjectIconBtn({
    Key? key,
    required this.icon,
    required this.link,
    this.padding,
    bool? isTablet,
  }) : isTablet = isTablet ?? false;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isTablet ? true : link.isNotEmpty,
      child: IconHover(
        icon: icon,
        color: kPrimaryColor,
        click: () => {if (link.isNotEmpty) AppData.goToLink(link)},
        padding: padding ?? 0,
      ),
    );
  }
}
