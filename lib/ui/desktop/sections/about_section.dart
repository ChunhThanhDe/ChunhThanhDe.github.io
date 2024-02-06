import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/controller/about_me_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/ui/desktop/widgets/about_card.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/section_title.dart';


class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;
    AboutMeController aboutController = AboutMeController();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _screenWidth * .1172, vertical: _screenHeight * .065),
      color: klightDarkColor,
      width: double.infinity,
      child: Column(
        children: [
          SectionTitle(title: texts.general.title_about_section),
          const SizedBox(
            width: 10,
          ),
          Row(
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
                width: 120,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: kTitleTextStyle.copyWith(
                          fontSize: _screenWidth * .035,
                        ),
                        children: [
                          const TextSpan(text: 'Hi there! I\'m '),
                          TextSpan(
                            text: aboutController.name,
                            style: kTitleTextStyle.copyWith(
                              color: kPrimaryColor,
                              decoration: TextDecoration.underline,
                              fontSize: _screenWidth * .035,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Text(
                        aboutController.aboutMe,
                        style: kNormalTextStyleGrey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
