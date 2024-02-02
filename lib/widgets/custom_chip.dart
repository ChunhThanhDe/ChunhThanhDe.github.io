import 'package:flutter/material.dart';
import 'package:profile/utils/constants.dart';

import '../utils/colors.dart';


class CustomChip extends StatelessWidget {
  final String name;
  const CustomChip({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Text(name, style: kNormalTextStyleWhite.copyWith(fontSize: 12)),
      decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.1),
          border: Border.all(
            color: kPrimaryColor,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(50.0)),
    );
  }
}
