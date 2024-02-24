import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/controller/navigation_top_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/models/tab_btn.dart';
import 'package:profile/ui/desktop/sections/footer_section.dart';
import 'package:profile/ui/desktop/widgets/animated_text.dart';
import 'package:profile/ui/mobile/sections/m_about_section.dart';
import 'package:profile/ui/mobile/sections/m_contact_section.dart';
import 'package:profile/ui/mobile/sections/m_home_section.dart';
import 'package:profile/ui/mobile/sections/m_project_and_designs.dart';
import 'package:profile/ui/mobile/sections/m_skill_section.dart';
import 'package:profile/ui/mobile/sections/m_work_experience.dart';
import 'package:profile/ui/mobile/widgets/hover_container.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/app_bar_icon.dart';
import 'package:profile/widgets/app_bar_lang_icon.dart';
import 'package:profile/widgets/music_player.dart';

class MobileBody extends StatefulWidget {
  MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final expKey = GlobalKey();
  final projectsKey = GlobalKey();

  Future scrollToItem(var sectionKey) async {
    final context = sectionKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }

  final ScrollController _scrollController = ScrollController();
  NavigationController navigationController = new NavigationController();
  late List<TabButtonLang> tabs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdarkColor,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: MusicPlayer(),
        backgroundColor: kdarkColor,
        elevation: 5.0,
        onPressed: () {},
      ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          color: kdarkColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(30.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: klightDarkColor,
                    border: Border.all(color: kPrimaryColor, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      'https://media.licdn.com/dms/image/D5603AQE94bklZfqiEQ/profile-displayphoto-shrink_800_800/0/1692931978549?e=1712793600&v=beta&t=sqt0zfsGgZ9MiTZGNSzqWVlYycgr6s-TXkQ_eOuIc94',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MdiIcons.chevronLeft,
                    color: kPrimaryColor,
                  ),
                  Text(
                    'ChunhThanhDe',
                    style: kTextStyleWhite.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Icon(
                    MdiIcons.chevronRight,
                    color: kPrimaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedTexttt(
                      text: texts.general.language + ": ",
                    ),
                    navigationController.currentLocale == navigationController.en
                        ? AppBarLangIcon(
                            hint: texts.general.vietnam,
                            icon: Image.asset('icons/flags/png100px/us.png', package: 'country_icons'),
                            click: () async {
                              navigationController.changeLocale(navigationController.vi);
                            },
                          )
                        : AppBarLangIcon(
                            hint: texts.general.english,
                            icon: Image.asset('icons/flags/png100px/vn.png', package: 'country_icons'),
                            click: () async {
                              navigationController.changeLocale(navigationController.en);
                            },
                          ),
                  ],
                ),
              ),
              HoverContainer(
                child: AnimatedTexttt(
                  text: texts.tabs.tabs[0],
                ),
                click: () {
                  scrollToItem(homeKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: AnimatedTexttt(
                  text: texts.tabs.tabs[1],
                ),
                click: () {
                  scrollToItem(aboutKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: AnimatedTexttt(
                  text: texts.tabs.tabs[2],
                ),
                click: () {
                  scrollToItem(skillsKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: AnimatedTexttt(
                  text: texts.tabs.tabs[3],
                ),
                click: () {
                  scrollToItem(expKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: AnimatedTexttt(
                  text: texts.tabs.tabs[4],
                ),
                click: () {
                  scrollToItem(projectsKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: AnimatedTexttt(
                  text: texts.tabs.tabs[5],
                ),
                click: () {
                  scrollToItem(contactKey);
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 30),
              Center(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      backgroundColor: klightDarkColor,
                      radius: 30,
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                MHomeSection(key: homeKey),
                MAboutSection(key: aboutKey),
                MSkillSection(key: skillsKey),
                MWorkExperience(key: expKey),
                MProjectsAndDesigns(key: projectsKey),
                MContactSection(key: contactKey),
                const FooterSection(),
              ],
            ),
          ),
          Positioned(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: BlurryContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Builder(builder: (context) {
                      return AppBarIcon(icon: MdiIcons.menuOpen, click: () => Scaffold.of(context).openDrawer());
                    }),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          scrollToItem(homeKey);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: CircleAvatar(
                            foregroundImage: AssetImage('./assets/avatar.png'),
                            backgroundColor: klightDarkColor,
                          ),
                        ),
                      ),
                    ),
                    AppBarIcon(
                      icon: MdiIcons.linkedin,
                      click: () async {
                        AppData.goToLink(link_linkedin);
                      },
                    ),
                  ],
                ),
                blur: 1.5,
                width: double.infinity,
                height: 60,
                elevation: 6,
                color: Colors.white.withOpacity(0.2),
                padding: const EdgeInsets.all(8),
                borderRadius: const BorderRadius.all(Radius.circular(45)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
