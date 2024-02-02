import 'package:flutter/material.dart';
import 'package:profile/ui/mobile/widgets/m_skill_card.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/widgets/section_title.dart';

import '../../../controller/skills_controller.dart';

class MSkillSection extends StatelessWidget {
  const MSkillSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SkillsController skillsController = SkillsController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      color: kdarkColor,
      child: Column(
        children: [
          SectionTitle(title: 'Skills'),
          ListView.builder(
            itemBuilder: (context, index) => MSkillCard(
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
