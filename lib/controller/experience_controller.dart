

import 'package:profile/generated/translations.g.dart';
import 'package:profile/models/work.dart';

class ExperienceController {
  List<Work> get workExperience => _workExperience;
  List<Work> _workExperience = [];

  get experiencesData => texts.experience.experiences;

  void triggerAnimation(String id, bool hover) {
    Work bs = _workExperience.firstWhere((element) => element.id == id);
    bs.isHovered = hover;
  }

  ExperienceController() {
    fetchAndSetExperiences();
  }

  void fetchAndSetExperiences() {
    try {
      List<Work> _loadedExperiences = [];
      int i = 0;
      for (var item in experiencesData) {
        Work experience = Work(
          id: texts.experience.experiences[i].company + texts.experience.experiences[i].position,
          company: texts.experience.experiences[i].company,
          position: texts.experience.experiences[i].position,
          country: texts.experience.experiences[i].country,
          empType: texts.experience.experiences[i].emp_type,
          state: texts.experience.experiences[i].state,
          startDate: texts.experience.experiences[i].start_date,
          workDone: texts.experience.experiences[i].work_done.toString().split('#').toList(),
          createdDate: texts.experience.experiences[i].created_at,
          worksHere: texts.experience.experiences[i].works_here == "true" ? true : false,
          isHidden: texts.experience.experiences[i].is_hidden == "true" ? true : false,
        );
        try {
          experience.endDate = texts.experience.experiences[i].end_date;
        } catch (e) {}

        try {
          experience.siteUrl = texts.experience.experiences[i].site_url;
        } catch (e) {}
        i++;
        _loadedExperiences.add(experience);
      }
      _workExperience = _loadedExperiences;
    } catch (e) {
      print ("fetchAndSetExperiences error: " + e.toString());
      throw e;
    }
  }
}
