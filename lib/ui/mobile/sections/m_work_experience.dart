import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/controller/experience_controller.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/ui/mobile/widgets/m_workTitleText.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/custom_loading_widget.dart';
import 'package:profile/widgets/section_title.dart';
import 'package:time_machine/time_machine.dart';
import 'package:url_launcher/url_launcher.dart';

class MWorkExperience extends StatelessWidget {
  const MWorkExperience({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExperienceController experienceController = ExperienceController();
    experienceController.workExperience.sort((a, b) => b.startDate.compareTo(a.startDate));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      color: klightDarkColor,
      child: Column(
        children: [
          SectionTitle(title: texts.general.title_experience_section),
          experienceController.workExperience.isEmpty
              ? CustomLoadingWidget()
              : ExpansionPanelList.radio(
                  children: experienceController.workExperience
                      .map((work) => ExpansionPanelRadio(
                            canTapOnHeader: true,
                            backgroundColor: kdarkColor,
                            value: work.id!,
                            headerBuilder: ((context, isExpanded) {
                              LocalDate a;
                              if (work.worksHere) {
                                a = LocalDate.today();
                              } else {
                                a = LocalDate.dateTime(DateTime.parse(work.endDate!));
                              }
                              LocalDate b = LocalDate.dateTime(DateTime.parse(work.startDate));
                              Period diff = a.periodSince(b);
                              return Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          work.position,
                                          style: kNormalTextStyleWhite.copyWith(
                                            fontSize: 13,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            if (work.siteUrl != null) {
                                              await launch('https://${work.siteUrl!}');
                                            }
                                          },
                                          child: mWorkTitleText(work: work, isMobile: true),
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
                                        Flexible(
                                          child: Text(
                                            '${DateFormat.yMMM().format(DateTime.parse(work.startDate))} - ${work.worksHere ? 'Present' : DateFormat.yMMM().format(DateTime.parse(work.endDate!))}',
                                            style: kNormalTextStyleGrey.copyWith(
                                              fontSize: 11,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                          child: const Icon(
                                            MdiIcons.circle,
                                            color: kPrimaryColor,
                                            size: 6,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Flexible(
                                          child: Text(
                                            '${diff.years == 0 ? '${diff.months} ${diff.months >= 2 ? 'months' : 'month'} ${diff.days} days' : '${diff.years} ${diff.years >= 2 ? 'yrs' : 'yr'} ${diff.months} months'}',
                                            style: kNormalTextStyleGrey.copyWith(
                                              fontSize: 11,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        const Icon(
                                          MdiIcons.mapMarker,
                                          color: kPrimaryColor,
                                          size: 15,
                                        ),
                                        const SizedBox(width: 4),
                                        Flexible(
                                          child: Text(
                                            '${work.state}, ${work.country}.',
                                            style: kNormalTextStyleGrey.copyWith(fontSize: 11),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                            body: SingleChildScrollView(
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: work.workDone.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${index + 1}.',
                                          style: kNormalTextStyleGrey.copyWith(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(left: 5),
                                          width: MediaQuery.of(context).size.width * .7,
                                          child: Text(
                                            work.workDone[index],
                                            style: kNormalTextStyleGrey.copyWith(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          ))
                      .toList(),
                ),
        ],
      ),
    );
  }
}
