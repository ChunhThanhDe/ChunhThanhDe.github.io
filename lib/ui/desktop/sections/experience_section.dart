import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/ui/desktop/widgets/work_title_text.dart';
import 'package:profile/providers/experiences.dart';
import 'package:profile/widgets/section_title.dart';
import 'package:provider/provider.dart';
import 'package:collection/collection.dart';
import 'package:time_machine/time_machine.dart';

import '../../../widgets/custom_loading_widget.dart';

class ExperienceSection extends StatelessWidget {
  final bool isTabMode;
  const ExperienceSection({
    Key? key,
    this.isTabMode = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    double _screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: isTabMode ? 90.0 : _screenWidth * .1172,
          vertical: isTabMode ? 50.0 : _screenHeight * .065),
      width: double.infinity,
      color: klightDarkColor,
      child: Column(
        children: [
          SectionTitle(title: 'Work Experience'),
          Consumer<Experiences>(builder: (context, workData, __) {
            workData.workExperience
                .sort((a, b) => b.startDate.compareTo(a.startDate));
            return workData.workExperience.isEmpty
                ? CustomLoadingWidget()
                : ExpansionPanelList.radio(
                    children: workData.workExperience
                        .map(
                          (work) => ExpansionPanelRadio(
                            canTapOnHeader: true,
                            backgroundColor: kdarkColor,
                            value: work.id!,
                            headerBuilder: ((context, isExpanded) {
                              print("Asfasfafa");
                              LocalDate a;
                              if (work.worksHere) {
                                a = LocalDate.today();
                              } else {
                                a = LocalDate.dateTime(
                                    DateTime.parse(work.endDate!));
                              }
                              LocalDate b = LocalDate.dateTime(
                                  DateTime.parse(work.startDate));
                              Period diff = a.periodSince(b);
                              return MouseRegion(
                                onEnter: (_) =>
                                    workData.triggerAnimation(work.id!, true),
                                onExit: (_) =>
                                    workData.triggerAnimation(work.id!, false),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            work.position,
                                            style: kNormalTextStyleWhite,
                                          ),
                                          const SizedBox(width: 10),
                                          GestureDetector(
                                            onTap: () async {
                                              if (work.siteUrl != null) {
                                                AppData.goToLink(
                                                    'https://${work.siteUrl}');
                                              }
                                            },
                                            child: WorkTitleText(work: work),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.timer_rounded,
                                            color: kPrimaryColor,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            '${DateFormat.yMMM().format(DateTime.parse(work.startDate))} - ${work.worksHere ? 'Present' : DateFormat.yMMM().format(DateTime.parse(work.endDate!))}',
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 6.0),
                                            child: const Icon(
                                              MdiIcons.circle,
                                              color: kPrimaryColor,
                                              size: 8,
                                            ),
                                          ),
                                          Text(
                                            '${diff.years == 0 ? '${diff.months} ${diff.months >= 2 ? 'months' : 'month'} ${diff.days} days' : '${diff.years} ${diff.years >= 2 ? 'years' : 'year'} ${diff.months} months ${diff.days} days'}',
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 12,
                                            ),
                                          ),
                                          const SizedBox(width: 12),
                                          const Icon(
                                            MdiIcons.mapMarker,
                                            color: kPrimaryColor,
                                            size: 16,
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            '${work.state}, ${work.country}.',
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                            body: Column(
                              children: work.workDone
                                  .mapIndexed(
                                    (i, workDone) => Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${i + 1}.',
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                const EdgeInsets.only(left: 6),
                                            width: 600,
                                            child: Text(
                                              workDone,
                                              style:
                                                  kNormalTextStyleGrey.copyWith(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        )
                        .toList(),
                  );
          }),
        ],
      ),
    );
  }
}
