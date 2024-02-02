import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/controller/about_me_controller.dart';
import 'package:profile/ui/desktop/widgets/about_card.dart';
import 'package:profile/widgets/section_title.dart';

class TAboutSection extends StatelessWidget {
  const TAboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AboutMeController aboutController = AboutMeController();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 50.0),
      color: klightDarkColor,
      width: double.infinity,
      child: Column(
        children: [
          SectionTitle(title: 'About'),
          MediaQuery.of(context).size.width >= 990
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          AboutCard(model: aboutController.aboutCard(0)),
                          AboutCard(model: aboutController.aboutCard(1)),
                          AboutCard(model: aboutController.aboutCard(2)),
                          AboutCard(model: aboutController.aboutCard(3)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Introduction',
                            style: kNormalTextStyleGrey,
                          ),
                          RichText(
                            text: TextSpan(
                              style: kTitleTextStyle.copyWith(fontSize: 40),
                              children: [
                                const TextSpan(text: 'Hi there! I\'m '),
                                TextSpan(
                                  text: 'Erick Namukolo',
                                  style: kTitleTextStyle.copyWith(
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.underline,
                                    fontSize: 40,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            child: Text(
                              AppData.aboutMe,
                              style: kNormalTextStyleGrey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: kTitleTextStyle.copyWith(fontSize: 40),
                        children: [
                          const TextSpan(text: 'Hi there! I\'m '),
                          TextSpan(
                            text: 'Erick Namukolo',
                            style: kTitleTextStyle.copyWith(
                              color: kPrimaryColor,
                              decoration: TextDecoration.underline,
                              fontSize: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Text(
                        'I’m a Software Engineer, passionate about Flutter Development & UI/UX Design (Mobile/Web Design) with an interest in back-end development (Currently learning Node Js).\n\nI create successful mobile apps(IOS & Android) and responsive websites that are fast, easy to use, and built with best practices. The main area of my expertise is front-end development using Flutter, Dart, HTML, CSS, JS, building small,medium and large software applications,features, animations, and coding interactive layouts.\n\nI have worked on a multitude of mobile and web based projects for a number of clients providing Mobile & Web Design (Adobe XD) and Development (Flutter,Dart,Firebase,Sqflite, Responsive Layouts).',
                        style: kNormalTextStyleGrey,
                      ),
                    ),
                    AboutCard(model: aboutController.aboutCard(0)),
                    AboutCard(model: aboutController.aboutCard(1)),
                    AboutCard(model: aboutController.aboutCard(2)),
                    AboutCard(model: aboutController.aboutCard(3)),
                  ],
                ),
        ],
      ),
    );
  }
}
