import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/ui/desktop/widgets/home_icon_hover.dart';
import 'package:profile/ui/desktop/widgets/modern_button.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/custom_avatar_glow.dart';

class THomeSection extends StatefulWidget {
  final Function() scrollToProjects;

  const THomeSection({
    Key? key,
    required this.scrollToProjects,
  }) : super(key: key);

  @override
  _THomeSectionState createState() => _THomeSectionState();
}

class _THomeSectionState extends State<THomeSection> {
  @override
  Widget build(BuildContext context) {
    // double _screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 70),
      margin: const EdgeInsets.only(top: 50),
      // height: _screenHeight * .83,
      width: double.infinity,
      child: Column(
        children: [
          MediaQuery.of(context).size.width <= 860
              ? const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomAnimatedAvatarGlowSwitcher(screenWidth: 0, isDevice: 1),
                  ],
                )
              : const Text(''),
          SizedBox(height: 10),
          Row(
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
                              'Android',
                              textStyle: kTitleTextStyle.copyWith(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 40.0,
                              ),
                              speed: const Duration(milliseconds: 200),
                            ),
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
                    Text(
                      texts.general.introduce_home_section1,
                      style: kNormalTextStyleGrey,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      texts.general.introduce_home_section2,
                      style: kNormalTextStyleGrey,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    modernButton(
                      icon: MdiIcons.folder,
                      click: widget.scrollToProjects,
                      text: texts.general.browse_projects_home_section,
                    ),
                    // BasicButton(
                    //   text: texts.general.browse_projects_home_section,
                    //   click: widget.scrollToProjects,
                    // ),
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
                      child: CustomAnimatedAvatarGlowSwitcher(screenWidth: 0, isDevice: 1),
                    )
                  : const Text(''),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
