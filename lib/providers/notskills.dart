import 'package:flutter/foundation.dart';
import 'package:profile/models/skill.dart';

import '../generated/translations.g.dart';
import '../utils/constants.dart';

class Skills {
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

  void triggerSelection(int index) {
    pages[0] = 0.0;
    pages[1] = 0.0;
    pages[2] = 0.0;
    pages[3] = 0.0;
    pages[4] = 0.0;
    pages[5] = 0.0;

    pages[index] = 45.0;

  }

  Future<void> fetchSkills() async {
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

  Future<void> fetchSkillss() async {
    try {
      var ref = await adminRef.child('skills').once();
      var data = (ref.snapshot.value as Map);
      List<Skill> _loadedSkills = [];
      data.forEach((key, skillData) {
        if (!skillData['hidden']) {
          _loadedSkills.add(
            Skill(
              des: skillData['des'],
              iconUrl: skillData['img'],
              name: skillData['name'],
            ),
          );
        }
      });
      _skills = _loadedSkills;
    } catch (e) {
      throw e;
    }
  }
}
