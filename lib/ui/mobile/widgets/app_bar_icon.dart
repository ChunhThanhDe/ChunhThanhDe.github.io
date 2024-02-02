import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import '../../../utils/colors.dart';

class AppBarIcon extends StatelessWidget {
  final IconData icon;
  final Function() click;
  const AppBarIcon({
    Key? key,
    required this.icon,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          color: kdarkColor,
          shape: BoxShape.circle,
        ),
        child: GlowIcon(
          icon,
          glowColor: Colors.white,
        ),
      ),
    );
  }
}
