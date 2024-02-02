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
import 'package:url_launcher/url_launcher.dart';
import 'package:time_machine/time_machine.dart';

import '../../../widgets/custom_loading_widget.dart';

class MWorkExperience extends StatelessWidget {
  const MWorkExperience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      color: klightDarkColor,
      child: Column(
        children: [
          SectionTitle(title: 'Work Experience'),
          Consumer<Experiences>(builder: (context, expData, __) {
            expData.workExperience
                .sort((a, b) => b.startDate.compareTo(a.startDate));
            return expData.workExperience.isEmpty
                ? CustomLoadingWidget()
                : ExpansionPanelList.radio(
                    children: expData.workExperience
                        .map((work) => ExpansionPanelRadio(
                              canTapOnHeader: true,
                              backgroundColor: kdarkColor,
                              value: work.id!,
                              headerBuilder: ((context, isExpanded) {
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
                                return Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            work.position,
                                            style:
                                                kNormalTextStyleWhite.copyWith(
                                              fontSize: 13,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              if (work.siteUrl != null) {
                                                await launch(
                                                    'https://${work.siteUrl!}');
                                              }
                                            },
                                            child: WorkTitleText(
                                                work: work, isMobile: true),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.timer_rounded,
                                            color: kPrimaryColor,
                                            size: 15,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${DateFormat.yMMM().format(DateTime.parse(work.startDate))} - ${work.worksHere ? 'Present' : DateFormat.yMMM().format(DateTime.parse(work.endDate!))}',
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 11,
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4.0),
                                            child: const Icon(
                                              MdiIcons.circle,
                                              color: kPrimaryColor,
                                              size: 6,
                                            ),
                                          ),
                                          Text(
                                            '${diff.years == 0 ? '${diff.months} ${diff.months >= 2 ? 'months' : 'month'} ${diff.days} days' : '${diff.years} ${diff.years >= 2 ? 'yrs' : 'yr'} ${diff.months} months'}',
                                            style:
                                                kNormalTextStyleGrey.copyWith(
                                              fontSize: 11,
                                            ),
                                          ),
                                          const SizedBox(width: 6),
                                          const Icon(
                                            MdiIcons.mapMarker,
                                            color: kPrimaryColor,
                                            size: 15,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            '${work.state}, ${work.country}.',
                                            style: kNormalTextStyleGrey
                                                .copyWith(fontSize: 11),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                              body: Column(
                                children: work.workDone
                                    .mapIndexed(
                                      (i, workDone) => Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 5),
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
                                              margin: const EdgeInsets.only(
                                                  left: 5),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .7,
                                              child: Text(
                                                workDone,
                                                style: kNormalTextStyleGrey
                                                    .copyWith(
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
                            ))
                        .toList(),
                  );
          }),
        ],
      ),
    );
  }
}
