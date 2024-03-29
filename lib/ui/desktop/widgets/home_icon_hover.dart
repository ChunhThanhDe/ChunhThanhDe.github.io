import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/utils/constants.dart';

class HomeIconHover extends StatefulWidget {
  final IconData icon;
  final Color color;
  final bool isMobile;

  HomeIconHover({
    Key? key,
    required this.icon,
    required this.color,
    this.isMobile = false,
  }) : super(key: key);

  @override
  State<HomeIconHover> createState() => _HomeIconHoverState();
}

class _HomeIconHoverState extends State<HomeIconHover> {
  Color iconColor = const Color(0xffB3A595);
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          iconColor = widget.color;
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          iconColor = const Color(0xffB3A595);
          _isHovered = false;
        });
      },
      child: GestureDetector(
        onTap: () async {
          if (widget.icon == MdiIcons.linkedin) {
            AppData.goToLink(link_linkedin);
          } else if (widget.icon == MdiIcons.github) {
            AppData.goToLink(link_github);
          } else if (widget.icon == MdiIcons.skype) {
            AppData.goToLink(link_skype);
          } else if (widget.icon == MdiIcons.facebook) {
            AppData.goToLink(link_facebook);
          } else if (widget.icon == MdiIcons.youtube) {
            // AppData.goToLink('https://www.linkedin.com/in/chunhthanhde/');
          }
        },
        child: Padding(
          padding: widget.isMobile ? const EdgeInsets.symmetric(horizontal: 8) : const EdgeInsets.only(right: 10),
          child: _isHovered
              ? GlowIcon(
                  widget.icon,
                  glowColor: iconColor,
                  size: 26,
                  color: iconColor,
                )
              : Icon(
                  widget.icon,
                  size: 26,
                  color: iconColor,
                ),
        ),
      ),
    );
  }
}
