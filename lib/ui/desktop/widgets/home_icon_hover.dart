import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/providers/analytics.dart';

import '../../../services/notification.dart';

// ignore: must_be_immutable
class HomeIconHover extends StatefulWidget {
  final IconData icon;
  final Color color;
  bool isMobile;
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
            Analytics.trackVisit(NotificationType.linkedIn);
            AppData.goToLink('https://www.linkedin.com/in/chunhthanhde/');
          } else if (widget.icon == MdiIcons.github) {
            Analytics.trackVisit(NotificationType.github);
            AppData.goToLink('https://github.com/chunhthanhde');
          } else if (widget.icon == MdiIcons.whatsapp) {
            Analytics.trackVisit(NotificationType.whatsApp);
            var whatsappUrl = 'https://wa.me/260962885743?text=Hello';
            AppData.goToLink(whatsappUrl);
          } else if (widget.icon == MdiIcons.facebook) {
            Analytics.trackVisit(NotificationType.fb);
            AppData.goToLink('https://www.facebook.com/ericnamukolo/');
          } else if (widget.icon == MdiIcons.googlePlay) {
            Analytics.trackVisit(NotificationType.playStore);
            AppData.goToLink(
                'https://play.google.com/store/apps/dev?id=8203990443766365712');
          }
        },
        child: Padding(
          padding: widget.isMobile
              ? const EdgeInsets.symmetric(horizontal: 8)
              : const EdgeInsets.only(right: 10),
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
