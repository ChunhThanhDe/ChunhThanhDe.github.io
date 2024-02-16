// ignore: avoid_web_libraries_in_flutter

import '../generated/translations.g.dart';
import '../models/project.dart';

class ProjectsController {
  get projectsData => texts.project.projects;

  images(int i) => texts.project.projects[i].images;

  tech(int i) => texts.project.projects[i].tech;

  List<Project> _projects = [];

  List<Project> get projects {
    return [..._projects];
  }

  ProjectsController() {
    fetchAndSetProjects();
  }

  void fetchAndSetProjects() {
    try {
      List<Project> _loadedProjects = [];
      int i = 0;
      for (var item in projectsData) {
        List<String> _loadedImage = [];
        for (var item in images(i)) {
          _loadedImage.add(item);
        }

        List<String> _loadedTech = [];
        for (var item in tech(i)) {
          _loadedTech.add(item);
        }

        Project project = Project(
          name: texts.project.projects[i].name,
          cover: texts.project.projects[i].cover_img,
          date: texts.project.projects[i].created_at,
          description: texts.project.projects[i].description,
          externalLink: texts.project.projects[i].external_link,
          githubLink: texts.project.projects[i].github_link,
          images: _loadedImage,
          isPersonal: texts.project.projects[i].is_personal == "true" ? true : false,
          playstoreLink: texts.project.projects[i].playstore_link,
          tech: _loadedTech,
          type: texts.project.projects[i].type,
        );
        i++;
        _loadedProjects.add(project);
      }
      _projects = _loadedProjects;
    } catch (e) {
      print ("fetchAndSetProjects error: " + e.toString());
      throw e;
    }
  }
}
