import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';

class modernButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback click;
  final bool isLoading;

  const modernButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.click,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: click,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor, width: 2.0),
            color: kdarkColor,
            borderRadius: const BorderRadius.all(Radius.circular(45)),
          ),
          child: isLoading
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(text, style: kNormalTextStyleWhite),
                    SizedBox(width: 10),
                    GlowIcon(
                      MdiIcons.loading,
                      glowColor: Colors.white,
                      blurRadius: 6.0,
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(text, style: kNormalTextStyleWhite),
                    SizedBox(width: 10),
                    GlowIcon(
                      icon,
                      glowColor: Colors.white,
                      blurRadius: 6.0,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
