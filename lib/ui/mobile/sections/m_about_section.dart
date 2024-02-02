import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/controller/about_me_controller.dart';
import 'package:profile/ui/desktop/widgets/about_card.dart';
import 'package:profile/widgets/section_title.dart';

class MAboutSection extends StatelessWidget {
  const MAboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AboutMeController aboutController = AboutMeController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                                  text: 'Nguyen Namukolo',
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 40),
                      child: Text(
                        AppData.aboutMe,
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
