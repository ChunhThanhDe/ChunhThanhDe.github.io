import 'package:flutter/material.dart';
import 'package:profile/utils/constants.dart';

import '../utils/colors.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final bool isDesktop;

  const SectionTitle({
    Key? key,
    required this.title,
    this.isDesktop = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50.0),
      child: Column(
        children: [
          Text(
            title,
            style: kMiniTitleTextStyleWhite.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: isDesktop ? 25 : 20,
            ),
          ),
          SizedBox(height: 5.0),
          Container(
            color: kPrimaryColor,
            height: 4,
            width: 80,
          ),
        ],
      ),
    );
  }
}
