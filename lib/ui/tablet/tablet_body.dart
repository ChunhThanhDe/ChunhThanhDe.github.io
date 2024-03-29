import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/controller/navigation_top_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/services/send_message.dart';
import 'package:profile/ui/desktop/sections/experience_section.dart';
import 'package:profile/ui/desktop/sections/footer_section.dart';
import 'package:profile/ui/desktop/widgets/modern_button.dart';
import 'package:profile/ui/tablet/sections/t_about_section.dart';
import 'package:profile/ui/tablet/sections/t_contact_section.dart';
import 'package:profile/ui/tablet/sections/t_home_section.dart';
import 'package:profile/ui/tablet/sections/t_projects_and_designs.dart';
import 'package:profile/ui/tablet/sections/t_skill_section.dart';
import 'package:profile/ui/tablet/widgets/t_popup_menu_Item.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/app_bar_lang_icon.dart';
import 'package:profile/widgets/music_player.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

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

  Future scrollToItem(var sectionKey, bool pop) async {
    final context = sectionKey.currentContext!;
    if (pop) Navigator.pop(context);
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

  late String selectedValue;
  bool isPopupMenuOpen = false;

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
                  THomeSection(
                    key: homeKey,
                    scrollToProjects: () {
                      scrollToItem(projectsKey, false);
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
                      flex: 1,
                      child: Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                scrollToItem(homeKey, false);
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
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          PopupMenuButton<void>(
                            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                              PopupMenuItem(
                                child: PopupMenuItemWidget(
                                  icon: Icons.home,
                                  onTap: () => scrollToItem(homeKey, true),
                                  text: navigationController.navigation(0),
                                ),
                              ),
                              PopupMenuItem(
                                value: navigationController.navigation(1),
                                child: PopupMenuItemWidget(
                                  icon: Icons.account_box,
                                  onTap: () => scrollToItem(aboutKey, true),
                                  text: navigationController.navigation(1),
                                ),
                              ),
                              PopupMenuItem(
                                value: navigationController.navigation(2),
                                child: PopupMenuItemWidget(
                                  icon: Icons.account_tree_sharp,
                                  onTap: () => scrollToItem(skillsKey, true),
                                  text: navigationController.navigation(2),
                                ),
                              ),
                              PopupMenuItem(
                                value: navigationController.navigation(3),
                                child: PopupMenuItemWidget(
                                  icon: Icons.card_travel,
                                  onTap: () => scrollToItem(experienceKey, true),
                                  text: navigationController.navigation(3),
                                ),
                              ),
                              PopupMenuItem(
                                value: navigationController.navigation(4),
                                child: PopupMenuItemWidget(
                                  icon: Icons.cloud,
                                  onTap: () => scrollToItem(projectsKey, true),
                                  text: navigationController.navigation(4),
                                ),
                              ),
                              PopupMenuItem(
                                value: navigationController.navigation(5),
                                child: PopupMenuItemWidget(
                                  icon: Icons.phone,
                                  onTap: () => scrollToItem(contactKey, true),
                                  text: navigationController.navigation(5),
                                ),
                              ),
                            ],
                            child: const Icon(Icons.menu),
                            offset: Offset(0, 50),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          modernButton(
                            icon: Icons.download_rounded,
                            click: () => downloadCV(),
                            text: navigationController.navigation(6),
                          ),
                          navigationController.currentLocale == navigationController.vi
                              ? AppBarLangIcon(
                                  hint: texts.general.vietnam,
                                  icon: Image.asset('icons/flags/png100px/vn.png', package: 'country_icons'),
                                  click: () async {
                                    navigationController.changeLocale(navigationController.en);
                                  },
                                )
                              : AppBarLangIcon(
                                  hint: texts.general.english,
                                  icon: Image.asset('icons/flags/png100px/us.png', package: 'country_icons'),
                                  click: () async {
                                    navigationController.changeLocale(navigationController.vi);
                                  },
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
