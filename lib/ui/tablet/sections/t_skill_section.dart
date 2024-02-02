import 'package:flutter/material.dart';
import 'package:profile/controller/skills_controller.dart';
import 'package:profile/ui/tablet/widgets/t_skill_card.dart';
import 'package:profile/utils/colors.dart';

import '../../../widgets/section_title.dart';

class TSkillSection extends StatelessWidget {
  const TSkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SkillsController skillsController = SkillsController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 50.0),
      width: double.infinity,
      color: kdarkColor,
      child: Column(
        children: [
          SectionTitle(title: 'Skills'),
          ListView.builder(
            itemBuilder: (context, index) => TSkillCard(
              skill: skillsController.skills[index],
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
