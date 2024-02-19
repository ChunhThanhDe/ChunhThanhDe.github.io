import 'package:flutter/material.dart';
import 'package:profile/utils/responsive_breakpoints.dart';
import 'package:profile/widgets/web_title_switcher.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget tabletBody;

  const ResponsiveLayout({
    Key? key,
    required this.desktopBody,
    required this.mobileBody,
    required this.tabletBody,
  }) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebTitleSwitcher(
      child: LayoutBuilder(
        builder: (context, dimension) {
          if (dimension.maxWidth < kTabletBreakpoint) {
            return widget.mobileBody;
          } else if (dimension.maxWidth >= kTabletBreakpoint && dimension.maxWidth < kCustomSize) {
            return widget.tabletBody;
          } else if (dimension.maxWidth >= kCustomSize) {
            return widget.desktopBody;
          } else {
            return widget.desktopBody;
          }
        },
      ),
    );
  }
}
