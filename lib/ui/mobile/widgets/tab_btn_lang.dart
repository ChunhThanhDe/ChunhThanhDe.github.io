import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:profile/models/tab_btn.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';

class TabBtnLang extends StatelessWidget {
  final TabButtonLang tab;
  final VoidCallback click;

  const TabBtnLang({Key? key, required this.tab, required this.click});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: click,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            padding: EdgeInsets.all(6),
            margin: EdgeInsets.only(
              right: 0,
              left: 5,
            ),
            decoration: tab.isSelected
                ? BoxDecoration(
                    color: kPrimaryColor.withOpacity(.1),
                    border: Border.all(
                      color: kPrimaryColor,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0))
                : BoxDecoration(
                    color: kPrimaryColor.withOpacity(.1),
                    border: Border.all(
                      color: kgreyButton,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tab.isSelected
                    ? AvatarGlow(
                        glowColor: kPrimaryColor,
                        endRadius: 5,
                        child: tab.icon,
                      )
                    : AvatarGlow(
                        glowColor: kgreyButton,
                        endRadius: 5,
                        child: tab.icon,
                      ),
                SizedBox(width: 10),
                FittedBox(
                  child: Text(
                    tab.title,
                    style: kNormalTextStyleGrey.copyWith(
                      fontSize: 14,
                      color: tab.isSelected ? Colors.white : kgreyButton,
                    ),
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
