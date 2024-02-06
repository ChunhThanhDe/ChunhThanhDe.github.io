import 'package:flutter/material.dart';
import 'package:profile/controller/project_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/models/tab_btn.dart';
import 'package:profile/ui/mobile/widgets/single_project_card.dart';
import 'package:profile/ui/mobile/widgets/tab_btn.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/widgets/custom_loading_widget.dart';
import 'package:profile/widgets/section_title.dart';

class MProjectsAndDesigns extends StatefulWidget {
  const MProjectsAndDesigns({Key? key}) : super(key: key);

  @override
  State<MProjectsAndDesigns> createState() => _MProjectsAndDesignsState();
}

class _MProjectsAndDesignsState extends State<MProjectsAndDesigns> {
  late List<TabButton> tabs;
  bool isViewPersonal = true;

  @override
  Widget build(BuildContext context) {
    ProjectsController projectsController = ProjectsController();
    tabs = [
      TabButton(title: texts.general.title_personal_projects_project_section, icon: Icons.folder, isSelected: isViewPersonal),
      TabButton(title: texts.general.title_client_projects_project_section, icon: Icons.laptop_mac_rounded, isSelected: !isViewPersonal),
    ];
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      color: kdarkColor,
      child: Column(
        children: [
          SectionTitle(title: texts.general.title_project_section),
          Container(
            padding: EdgeInsets.all(12),
            width: double.infinity,
            decoration: BoxDecoration(
              color: klightDarkColor,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xff000000).withOpacity(0.10),
                  blurRadius: 4.0,
                  offset: const Offset(0.0, 3.0),
                )
              ],
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Row(
              children: tabs
                  .map((tab) => TabBtn(
                        tab: tab,
                        click: () {
                          setState(() {
                            // tabs.forEach((element) {
                            //   element.isSelected = false;
                            // });
                            // tab.isSelected = true;

                            int tabIndex = tabs.indexOf(tab);
                            if (tabIndex == 1) {
                              isViewPersonal = false;
                            } else {
                              isViewPersonal = true;
                            }
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
          SizedBox(height: 30),
          projectsController.projects.where((element) => tabs.first.isSelected ? element.isPersonal : !element.isPersonal).toList().isEmpty
              ? CustomLoadingWidget()
              : ListView.builder(
                  itemBuilder: (context, index) => SingleProjectCard(project: projectsController.projects.where((element) => tabs.first.isSelected ? element.isPersonal : !element.isPersonal).toList()[index]),
                  itemCount: projectsController.projects.where((element) => tabs.first.isSelected ? element.isPersonal : !element.isPersonal).toList().isEmpty
                      ? 0
                      : projectsController.projects.where((element) => tabs.first.isSelected ? element.isPersonal : !element.isPersonal).toList().length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
        ],
      ),
    );
  }
}
