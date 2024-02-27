import 'package:flutter/material.dart';
import 'package:profile/controller/about_me_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/ui/desktop/widgets/about_card.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
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
          SectionTitle(title: texts.general.title_about_section),
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
                          Text(
                            texts.general.title_introduction_about_section,
                            style: kMiniTitleTextStyleWhite,
                          ),
                          RichText(
                            text: TextSpan(
                              style: kTitleTextStyle.copyWith(fontSize: 40),
                              children: [
                                TextSpan(text: texts.general.hi_about_section),
                                TextSpan(
                                  text: texts.about.name,
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
                              texts.about.aboutMe,
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
                          TextSpan(
                            text: texts.general.hi_about_section,
                          ),
                          TextSpan(
                            text: texts.about.name,
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
                        texts.about.aboutMe,
                        style: kNormalTextStyleGrey,
                      ),
                    ),
                    AboutCard(model: aboutController.aboutCard(0)),
                    AboutCard(model: aboutController.aboutCard(1)),
                    AboutCard(model: aboutController.aboutCard(2)),
                    AboutCard(model: aboutController.aboutCard(3)),
                    AboutCard(model: aboutController.aboutCard(4)),
                  ],
                ),
        ],
      ),
    );
  }
}
