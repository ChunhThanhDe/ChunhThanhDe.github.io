import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/controller/project_controller.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/ui/desktop/sections/experience_section.dart';
import 'package:profile/ui/desktop/sections/footer_section.dart';
import 'package:profile/ui/desktop/widgets/animated_text.dart';
import 'package:profile/ui/tablet/sections/t_about_section.dart';
import 'package:profile/ui/tablet/sections/t_contact_section.dart';
import 'package:profile/ui/tablet/sections/t_home_section.dart';
import 'package:profile/ui/tablet/sections/t_projects_and_designs.dart';
import 'package:profile/ui/tablet/sections/t_skill_section.dart';
import 'package:provider/provider.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../desktop/widgets/mordern_button.dart';

class TabletBody extends StatefulWidget {
  const TabletBody({Key? key}) : super(key: key);

  @override
  State<TabletBody> createState() => _TabletBodyState();
}

class _TabletBodyState extends State<TabletBody> {
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final experienceKey = GlobalKey();
  double homeWidth = 0;
  double experienceWidth = 0;
  double aboutWidth = 0;
  double skillsWidth = 0;
  double projectsWidth = 0;
  double contactWidth = 0;

  Future scrollToItem(var sectionKey) async {
    final context = sectionKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    print("TabletBody screenWidth = " + _screenWidth.toString());
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
                  THomeSection(
                    key: homeKey,
                    scrollToProjects: () {
                      scrollToItem(projectsKey);
                    },
                  ),
                  TAboutSection(key: aboutKey),
                  TSkillSection(key: skillsKey),
                  ExperienceSection(key: experienceKey, isTabMode: true),
                  TProjectsAndDesigns(key: projectsKey),
                  TContactSection(key: contactKey),
                  const FooterSection(),
                ],
              ),
            ),
          ),

          // top navigation bar
          Positioned(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              padding: EdgeInsets.symmetric(horizontal: _screenWidth * .03),
              child: BlurryContainer(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
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
                          const Icon(
                            MdiIcons.chevronLeft,
                            color: kPrimaryColor,
                          ),
                          Text(
                            'ChunhThanhDe',
                            style: kTextStyleWhite.copyWith(
                              fontSize: 15,
                            ),
                          ),
                          const Icon(
                            MdiIcons.chevronRight,
                            color: kPrimaryColor,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AnimatedTexttt(
                            text: 'Home',
                            click: () => scrollToItem(homeKey),
                            width: homeWidth,
                          ),
                          AnimatedTexttt(
                            text: 'About',
                            click: () => scrollToItem(aboutKey),
                            width: aboutWidth,
                          ),
                          AnimatedTexttt(
                            text: 'Skills',
                            click: () => scrollToItem(skillsKey),
                            width: skillsWidth,
                          ),
                          AnimatedTexttt(
                            text: 'Experience',
                            click: () => scrollToItem(experienceKey),
                            width: experienceWidth,
                          ),
                          AnimatedTexttt(
                            text: 'Projects',
                            click: () => scrollToItem(projectsKey),
                            width: projectsWidth,
                          ),
                          AnimatedTexttt(
                            text: 'Contact',
                            click: () => scrollToItem(contactKey),
                            width: contactWidth,
                          ),
                          MordernButton(
                            icon: Icons.download_rounded,
                            click: () => ProjectsController.downloadCV(),
                            text: 'Download CV',
                          ),
                        ],
                      ),
                    ),
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
        ],
      ),
    );
  }
}
