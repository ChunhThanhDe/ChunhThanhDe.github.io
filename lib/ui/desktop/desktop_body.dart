// ignore_for_file: avoid_print

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/controller/navigation_top_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/services/send_message.dart';
import 'package:profile/ui/desktop/sections/about_section.dart';
import 'package:profile/ui/desktop/sections/contact_section.dart';
import 'package:profile/ui/desktop/sections/experience_section.dart';
import 'package:profile/ui/desktop/sections/footer_section.dart';
import 'package:profile/ui/desktop/sections/home_section.dart';
import 'package:profile/ui/desktop/sections/projects_and_designs.dart';
import 'package:profile/ui/desktop/sections/skills_section.dart';
import 'package:profile/ui/desktop/widgets/animated_text.dart';
import 'package:profile/ui/desktop/widgets/modern_button.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/app_bar_lang_icon.dart';
import 'package:profile/widgets/music_player.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final experienceKey = GlobalKey();
  double homeWidth = 0;
  double aboutWidth = 0;
  double skillsWidth = 0;
  double experienceWidth = 0;
  double projectsWidth = 0;
  double contactWidth = 0;

  Future scrollToItem(GlobalKey sectionKey) async {
    final context = sectionKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }

  final ScrollController _scrollController = ScrollController();
  NavigationController navigationController = new NavigationController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  // easeInOutCubic
  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kdarkColor,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          WebSmoothScroll(
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  HomeSection(
                    key: homeKey,
                    scrollToProjects: () {
                      scrollToItem(projectsKey);
                    },
                  ),
                  AboutSection(key: aboutKey),
                  SkillsSection(key: skillsKey),
                  ExperienceSection(key: experienceKey),
                  ProjectsAndDesigns(key: projectsKey),
                  ContactSection(key: contactKey),
                  const FooterSection(),
                ],
              ),
            ),
          ),

          // top navigation bar
          Positioned(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: _screenWidth * .059),
              child: BlurryContainer(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Expanded(
                    //   flex: _screenWidth > 1700 ? 8 : 4,
                    //   child: Row(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                scrollToItem(homeKey);
                              },
                              child: const CircleAvatar(
                                foregroundImage: AssetImage('assets/avatar.png'),
                                backgroundColor: klightDarkColor,
                                radius: 23,
                              ),
                            ),
                          ),
                          Icon(
                            MdiIcons.chevronLeft,
                            color: kPrimaryColor,
                          ),
                          Text(
                            'ChunhThanhDe',
                            style: kTextStyleWhite.copyWith(
                              fontSize: 15,
                            ),
                          ),
                          Icon(
                            MdiIcons.chevronRight,
                            color: kPrimaryColor,
                          ),
                    //     ],
                    //   ),
                    // ),
                    // Expanded(
                    //   flex: 5,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                          Spacer(),
                          AnimatedTexttt(
                            text: navigationController.navigation(0),
                            click: () => scrollToItem(homeKey),
                            width: homeWidth,
                          ),
                          SizedBox(width: 18),
                          AnimatedTexttt(
                            text: navigationController.navigation(1),
                            click: () => scrollToItem(aboutKey),
                            width: aboutWidth,
                          ),
                          SizedBox(width: 18),
                          AnimatedTexttt(
                            text: navigationController.navigation(2),
                            click: () => scrollToItem(skillsKey),
                            width: skillsWidth,
                          ),
                          SizedBox(width: 18),
                          AnimatedTexttt(
                            text: navigationController.navigation(3),
                            click: () => scrollToItem(experienceKey),
                            width: experienceWidth,
                          ),
                          SizedBox(width: 18),
                          AnimatedTexttt(
                            text: navigationController.navigation(4),
                            click: () => scrollToItem(projectsKey),
                            width: projectsWidth,
                          ),
                          SizedBox(width: 18),
                          AnimatedTexttt(
                            text: navigationController.navigation(5),
                            click: () => scrollToItem(contactKey),
                            width: contactWidth,
                          ),
                          SizedBox(width: 18),
                          modernButton(
                            icon: Icons.download_rounded,
                            click: () => downloadCV(),
                            text: navigationController.navigation(6),
                          ),
                          SizedBox(width: 16),
                          navigationController.currentLocale == navigationController.en
                              ? AppBarLangIcon(
                                  hint: texts.general.vietnam,
                                  icon: Image.asset('icons/flags/png100px/vn.png', package: 'country_icons'),
                                  click: () async {
                                    navigationController.changeLocale(navigationController.vi);
                                  },
                                )
                              : AppBarLangIcon(
                                  hint: texts.general.english,
                                  icon: Image.asset('icons/flags/png100px/us.png', package: 'country_icons'),
                                  click: () async {
                                    navigationController.changeLocale(navigationController.en);
                                  },
                                ),
                    //     ],ø
                    //   ),
                    // ),
                  ],
                ),
                blur: 1.5,
                width: double.infinity,
                height: 70,
                elevation: 6,
                color: Colors.white.withOpacity(0.2),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                borderRadius: const BorderRadius.all(Radius.circular(45)),
              ),
            ),
          ),

          // Bottom navigation bar
          Positioned(
            bottom: 5,
            left: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MusicPlayer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
