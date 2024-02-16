import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:profile/utils/colors.dart';

class AppBarLangIcon extends StatelessWidget {
  final String hint;
  final Widget icon;
  final Function() click;

  const AppBarLangIcon({
    Key? key,
    required this.hint,
    required this.icon,
    required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: hint,
      child: GestureDetector(
        onTap: click,
        child: Container(
          margin: EdgeInsets.all(8),
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: kdarkColor,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: const EdgeInsets.all(7),
            child: icon,
          ),
        ),
      ),
    );
  }
}
