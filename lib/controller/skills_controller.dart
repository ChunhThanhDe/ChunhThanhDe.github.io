import 'package:profile/models/skill.dart';

import '../generated/translations.g.dart';

class SkillsController {
  get skillData => texts.skills.skills;

  List<Skill> _skills = [];

  List<Skill> get skills => [..._skills];
  final List<double> pages = [
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
    0.0,
  ];

  SkillsController() {
    fetchSkills();
  }

  void triggerSelection(int index) {
    pages[0] = 0.0;
    pages[1] = 0.0;
    pages[2] = 0.0;
    pages[3] = 0.0;
    pages[4] = 0.0;
    pages[5] = 0.0;

    pages[index] = 45.0;
  }

  void fetchSkills() {
    try {
      List<Skill> _loadedSkills = [];
      int i = 0;
      for (var item in skillData) {
        Skill skill = Skill(
          name: texts.skills.skills[i].name,
          iconUrl: texts.skills.skills[i].img,
          des: texts.skills.skills[i].des,
        );
        i++;
        _loadedSkills.add(skill);
      }
      _skills = _loadedSkills;
    } catch (e) {
      throw e;
    }
  }
}
