import 'package:flutter/material.dart';
import 'package:profile/models/skill.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';

class MSkillCard extends StatefulWidget {
  final Skill skill;

  const MSkillCard({
    Key? key,
    required this.skill,
  }) : super(key: key);

  @override
  State<MSkillCard> createState() => _MSkillCardState();
}

class _MSkillCardState extends State<MSkillCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 750),
              curve: Curves.bounceOut,
              margin: const EdgeInsets.only(right: 20),
              height: _isHovered ? 135 : 120,
              width: _isHovered ? 135 : 120,
              decoration: BoxDecoration(
                color: _isHovered ? const Color(0xff15202B) : klightDarkColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(_isHovered ? 35 : 25),
                  bottomLeft: const Radius.circular(10),
                  topLeft: Radius.circular(_isHovered ? 35 : 25),
                  topRight: const Radius.circular(10),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(25),
                child: Image.network(widget.skill.iconUrl),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.skill.name, style: kNormalTextStyleWhite),
                  const SizedBox(height: 5),
                  Text(
                    widget.skill.des,
                    style: kNormalTextStyleGrey.copyWith(
                      fontSize: 13,
                    ),
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
