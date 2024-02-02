import 'package:flutter/material.dart';
import 'package:profile/controller/skills_controller.dart';
import 'package:profile/ui/desktop/widgets/skill_card.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/widgets/section_title.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SkillsController skillsController = SkillsController();

    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: _screenWidth * .1172, vertical: _screenHeight * .0575),
      width: double.infinity,
      color: kdarkColor,
      child: Column(
        children: [
          SectionTitle(title: 'Skills'),
          GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 180 / 180,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 20.0,
            ),
            itemBuilder: (context, index) => SkillCard(
              skill: skillsController.skills[index],
              size: _screenWidth * .117,
            ),
            itemCount: skillsController.skills.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          ),
        ],
      ),
    );
  }
}
