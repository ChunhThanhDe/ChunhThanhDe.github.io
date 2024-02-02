import 'package:flutter/material.dart';
import 'package:profile/utils/constants.dart';

import '../../../models/project.dart';
import '../../../utils/colors.dart';

class SingleProjectCard extends StatelessWidget {
  final Project proj;

  const SingleProjectCard({Key? key, required this.proj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        child: Column(
          children: [
            Container(
              height: screenWidth <= 1366 ? 210 : 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: klightDarkColor,
                image: DecorationImage(
                  image: NetworkImage(proj.cover),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    proj.name,
                    style: kMiniTitleTextStylePink.copyWith(fontSize: 18),
                  ),
                  Text(
                    proj.description,
                    style: kNormalTextStyleGrey,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
