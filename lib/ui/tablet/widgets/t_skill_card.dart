import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';

import '../../../models/skill.dart';

class TSkillCard extends StatefulWidget {
  final Skill skill;
  const TSkillCard({
    Key? key,
    required this.skill,
  }) : super(key: key);

  @override
  State<TSkillCard> createState() => _TSkillCardState();
}

class _TSkillCardState extends State<TSkillCard> {
  bool _ishovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _ishovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _ishovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 750),
        curve: Curves.bounceOut,
        margin: EdgeInsets.symmetric(vertical: _ishovered ? 10 : 20),
        padding: EdgeInsets.symmetric(
            vertical: 20, horizontal: _ishovered ? 20 : 30),
        width: double.infinity,
        height: _ishovered ? 165 : 150,
        decoration: BoxDecoration(
          color: _ishovered ? const Color(0xff15202B) : klightDarkColor,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(3, 5),
              color: const Color(0xff000000).withOpacity(.1),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(right: 30),
                child: Image.network(widget.skill.iconUrl),
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.skill.name,
                    style: kNormalTextStyleWhite.copyWith(fontSize: 18),
                  ),
                  Text(
                    widget.skill.des,
                    style: kNormalTextStyleGrey,
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
