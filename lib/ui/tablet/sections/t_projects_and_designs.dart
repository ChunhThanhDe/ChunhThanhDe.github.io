import 'package:flutter/material.dart';
import 'package:profile/controller/project_controller.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/ui/tablet/widgets/t_project_card.dart';

import '../../../widgets/section_title.dart';

class TProjectsAndDesigns extends StatelessWidget {
  const TProjectsAndDesigns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProjectsController projectsController = ProjectsController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90.0, vertical: 50.0),
      width: double.infinity,
      color: kdarkColor,
      child:   Column(
          children: [
            SectionTitle(title: 'Projects & Designs'),
            ListView.builder(
              itemBuilder: (context, index) => TProjectCard(
                project: projectsController.projects[index],
              ),
              itemCount: projectsController.projects.isEmpty ? 0 : projectsController.projects.length,
              shrinkWrap: true,
            ),
            const SizedBox(
              height: 20,
            ),
            // BasicButton(
            //   text: 'Browse All Projects',
            //   click: () {},
            // ),
          ],
        ),

    );
  }
}
