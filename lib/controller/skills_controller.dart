import 'package:profile/generated/translations.g.dart';
import 'package:profile/models/skill.dart';

class SkillsController {
  get skillData => texts.skills.skills;

  List<Skill> _skills = [];

  List<Skill> get skills => [..._skills];

  SkillsController() {
    fetchSkills();
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
