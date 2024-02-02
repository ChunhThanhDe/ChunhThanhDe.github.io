import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/models/work.dart';

class WorkTitleText extends StatelessWidget {
  final bool isMobile;
  final Work work;
  const WorkTitleText({
    Key? key,
    required this.work,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              '@',
              style: kNormalTextStyleWhite.copyWith(
                color: kPrimaryColor,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            const SizedBox(width: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  work.company,
                  style: kNormalTextStyleWhite.copyWith(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: isMobile ? 14 : 16,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.bounceOut,
                  height: 2,
                  width: work.isHovered ? 160.0 : 50,
                  color: kPrimaryColor,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                work.empType,
                style: kNormalTextStyleWhite.copyWith(fontSize: 11),
              ),
            )
          ],
        ),
      ],
    );
  }
}
