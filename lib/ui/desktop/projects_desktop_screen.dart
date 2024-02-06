import 'package:flutter/material.dart';
import 'package:profile/controller/project_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/ui/desktop/widgets/single_project_card.dart';

class ProjectsDesktopScreen extends StatelessWidget {
  const ProjectsDesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProjectsController projectsController = ProjectsController();
    double containerPadding() {
      if (MediaQuery.of(context).size.width >= 1200) {
        return 160;
      } else if (MediaQuery.of(context).size.width >= 1000 && MediaQuery.of(context).size.width < 1200) {
        return 90;
      } else if (MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width < 1000) {
        return 50;
      }
      return 30;
    }

    return Scaffold(
      backgroundColor: kdarkColor,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width >= 1200 ? 80 : 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Opacity(
              opacity: 0,
              child: CircleAvatar(
                radius: 30,
                backgroundColor: klightDarkColor,
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: klightDarkColor,
                  child: const Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child:  Text(
                texts.general.title_project_section,
                style: kMiniTitleTextStyleWhite,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: containerPadding()),
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(vertical: 15),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                ),
                itemBuilder: (context, index) => SingleProjectCard(proj: projectsController.projects[index]),
                itemCount: projectsController.projects.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
