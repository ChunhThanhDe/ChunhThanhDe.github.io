// ignore_for_file: sized_box_for_whitespace

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/services/send_message.dart';
import 'package:profile/ui/desktop/widgets/home_icon_hover.dart';
import 'package:profile/ui/desktop/widgets/modern_button.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';

class MHomeSection extends StatelessWidget {
  const MHomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: const AvatarGlow(
              endRadius: 160.0,
              animate: true,
              glowColor: kPrimaryColor,
              repeat: true,
              duration: Duration(milliseconds: 2000),
              // repeatPauseDuration: Duration(milliseconds: 30),
              child: CircleAvatar(
                foregroundImage: AssetImage('assets/avatar.png'),
                backgroundColor: klightDarkColor,
                radius: 90,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  'I am a ',
                  style: kTitleTextStyle.copyWith(fontSize: 38),
                ),
              ),
              AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText(
                    'Android',
                    textStyle: kTitleTextStyle.copyWith(
                      color: kPrimaryColor,
                      fontWeight: MediaQuery.of(context).size.width >= 500 ? FontWeight.bold : null,
                      fontSize: 38,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    'Flutter',
                    textStyle: kTitleTextStyle.copyWith(
                      color: kPrimaryColor,
                      fontWeight: MediaQuery.of(context).size.width >= 500 ? FontWeight.bold : null,
                      fontSize: 38,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    'Web',
                    textStyle: kTitleTextStyle.copyWith(
                      color: kPrimaryColor,
                      fontWeight: MediaQuery.of(context).size.width >= 500 ? FontWeight.bold : null,
                      fontSize: 38,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    'Software',
                    textStyle: kTitleTextStyle.copyWith(
                      color: kPrimaryColor,
                      fontWeight: MediaQuery.of(context).size.width >= 500 ? FontWeight.bold : null,
                      fontSize: 38,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                  TypewriterAnimatedText(
                    'Mobile',
                    textStyle: kTitleTextStyle.copyWith(
                      color: kPrimaryColor,
                      fontWeight: MediaQuery.of(context).size.width >= 500 ? FontWeight.bold : null,
                      fontSize: 38,
                    ),
                    speed: const Duration(milliseconds: 200),
                  ),
                ],
              ),
            ],
          ),
          Text(
            'Developer.',
            style: kTitleTextStyle.copyWith(fontSize: 38),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            texts.general.introduce_home_section1,
            textAlign: TextAlign.center,
            style: kNormalTextStyleGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            texts.general.introduce_home_section2,
            textAlign: TextAlign.center,
            style: kNormalTextStyleGrey,
          ),
          const SizedBox(
            height: 30,
          ),
          modernButton(
            icon: Icons.download_rounded,
            click: () => downloadCV(),
            text: texts.tabs.tabs[6],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeIconHover(
                isMobile: true,
                icon: MdiIcons.linkedin,
                color: const Color(0xff0A66C2),
              ),
              HomeIconHover(
                isMobile: true,
                icon: MdiIcons.github,
                color: const Color(0xff171515),
              ),
              HomeIconHover(
                isMobile: true,
                icon: MdiIcons.skype,
                color: const Color(0xff00aff0),
              ),
              HomeIconHover(
                isMobile: true,
                icon: MdiIcons.facebook,
                color: const Color(0xff4267B2),
              ),
              HomeIconHover(
                isMobile: true,
                icon: MdiIcons.youtube,
                color: const Color(0xffff0000),
              ),
              HomeIconHover(
                isMobile: true,
                icon: MdiIcons.googlePlay,
                color: const Color(0xff48ff48),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
