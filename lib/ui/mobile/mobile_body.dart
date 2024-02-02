import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/ui/desktop/sections/footer_section.dart';
import 'package:profile/ui/desktop/widgets/animated_text.dart';
import 'package:profile/ui/mobile/sections/m_about_section.dart';
import 'package:profile/ui/mobile/sections/m_contact_section.dart';
import 'package:profile/ui/mobile/sections/m_home_section.dart';
import 'package:profile/ui/mobile/sections/m_project_and_designs.dart';
import 'package:profile/ui/mobile/sections/m_skill_section.dart';
import 'package:profile/ui/mobile/sections/m_work_experience.dart';
import 'package:profile/ui/mobile/widgets/app_bar_icon.dart';
import 'package:profile/ui/mobile/widgets/hover_container.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

import '../../providers/analytics.dart';
import '../../services/notification.dart';

class MobileBody extends StatelessWidget {
  final contactKey = GlobalKey();
  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final expKey = GlobalKey();
  final projectsKey = GlobalKey();

  MobileBody({Key? key}) : super(key: key);

  Future scrollToItem(var sectionKey) async {
    final context = sectionKey.currentContext!;
    await Scrollable.ensureVisible(
      context,
      duration: const Duration(seconds: 2),
      curve: Curves.easeOutBack,
    );
  }

  final ScrollController _scrollController = ScrollController();
  final phone = '+260962885743';
  final text = 'Hello There,';

  @override
  Widget build(BuildContext context) {
    print("MobileBody");
    return Scaffold(
      backgroundColor: kdarkColor,
      floatingActionButton: FloatingActionButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        onPressed: () async {
          Analytics.trackVisit(NotificationType.whatsApp);
          var whatsappUrl = 'whatsapp://send?phone=$phone&text=$text';
          AppData.goToLink(whatsappUrl);
        },
        child: const Icon(
          MdiIcons.whatsapp,
          size: 30,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff075e54),
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
                      'https://firebasestorage.googleapis.com/v0/b/profile-28840.appspot.com/o/project-images%2Fadmin_2023-01-31T13%3A34%3A23.793033?alt=media&token=466588bb-d478-4ed6-99e2-e2338f21f439',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    MdiIcons.chevronLeft,
                    color: kPrimaryColor,
                  ),
                  Text(
                    'Erick Namukolo',
                    style: kTextStyleWhite.copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const Icon(
                    MdiIcons.chevronRight,
                    color: kPrimaryColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              HoverContainer(
                child: const AnimatedTexttt(
                  text: 'Home',
                ),
                click: () {
                  scrollToItem(homeKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: const AnimatedTexttt(
                  text: 'About',
                ),
                click: () {
                  scrollToItem(aboutKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: const AnimatedTexttt(
                  text: 'Skills',
                ),
                click: () {
                  scrollToItem(skillsKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: const AnimatedTexttt(
                  text: 'Work Experience',
                ),
                click: () {
                  scrollToItem(expKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: const AnimatedTexttt(
                  text: 'Projects',
                ),
                click: () {
                  scrollToItem(projectsKey);
                  Navigator.pop(context);
                },
              ),
              HoverContainer(
                child: const AnimatedTexttt(
                  text: 'Contact',
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
              )
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
                      return AppBarIcon(
                          icon: MdiIcons.menuOpen,
                          click: () => Scaffold.of(context).openDrawer());
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
                            foregroundImage: AssetImage('assets/avatar.png'),
                            backgroundColor: klightDarkColor,
                          ),
                        ),
                      ),
                    ),
                    AppBarIcon(
                      icon: MdiIcons.googlePlay,
                      click: () async {
                        Analytics.trackVisit(NotificationType.playStore);
                        AppData.goToLink(
                            'https://play.google.com/store/apps/dev?id=8203990443766365712');
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
