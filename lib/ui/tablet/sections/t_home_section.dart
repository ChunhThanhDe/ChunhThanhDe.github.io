import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/widgets/basic_button.dart';

import '../../desktop/widgets/home_icon_hover.dart';

class THomeSection extends StatelessWidget {
  final Function() scrollToProjects;
  const THomeSection({
    Key? key,
    required this.scrollToProjects,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_screenHeight < 600) _screenHeight = 600;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 70),
      margin: const EdgeInsets.only(top: 50),
      height: _screenHeight * .83,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'I am a ',
                      style: kTitleTextStyle.copyWith(fontSize: 40),
                    ),
                    AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Flutter',
                          textStyle: kTitleTextStyle.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                          speed: const Duration(milliseconds: 200),
                        ),
                        TypewriterAnimatedText(
                          'Web',
                          textStyle: kTitleTextStyle.copyWith(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0,
                          ),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Developer.',
                  style: kTitleTextStyle.copyWith(fontSize: 40),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'I\'m a Software Engineer & UI/UX Designer based in Lusaka, Zambia. I build interactive software applications & websites that run across platforms & devices.',
                  style: kNormalTextStyleGrey,
                ),
                const SizedBox(
                  height: 30,
                ),
                BasicButton(
                  text: 'Browse Projects',
                  click: scrollToProjects,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    HomeIconHover(
                      icon: MdiIcons.linkedin,
                      color: const Color(0xff0A66C2),
                    ),
                    HomeIconHover(
                      icon: MdiIcons.github,
                      color: const Color(0xff171515),
                    ),
                    HomeIconHover(
                      icon: MdiIcons.skype,
                      color: const Color(0xff00aff0),
                    ),
                    HomeIconHover(
                      icon: MdiIcons.facebook,
                      color: const Color(0xff4267B2),
                    ),
                    HomeIconHover(
                      icon: MdiIcons.youtube,
                      color: const Color(0xffff0000),
                    ),
                    HomeIconHover(
                      icon: MdiIcons.googlePlay,
                      color: const Color(0xff48ff48),
                    ),
                  ],
                ),
              ],
            ),
          ),
          MediaQuery.of(context).size.width >= 860
              ? const Expanded(
                  child: AvatarGlow(
                    endRadius: 120.0 * 1.3,
                    animate: true,
                    glowColor: kPrimaryColor,
                    repeat: true,
                    duration: Duration(milliseconds: 2000),
                    // repeatPauseDuration: Duration(milliseconds: 30),
                    child: CircleAvatar(
                      foregroundImage: AssetImage('assets/avatar.png'),
                      backgroundColor: klightDarkColor,
                      radius: 90 * 1.3,
                    ),
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}
