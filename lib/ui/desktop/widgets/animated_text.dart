import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';

class AnimatedTexttt extends StatefulWidget {
  final String text;
  final Function()? click;
  final double width;

  const AnimatedTexttt({
    Key? key,
    required this.text,
    this.click,
    this.width = 0,
  }) : super(key: key);

  @override
  State<AnimatedTexttt> createState() => _AnimatedTextttState();
}

class _AnimatedTextttState extends State<AnimatedTexttt> {
  Color color = Colors.white;
  FontWeight? bold;
  double width = 0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          color = kPrimaryColor;
          bold = FontWeight.bold;
        });
      },
      onExit: (_) {
        setState(() {
          color = Colors.white;
          bold = null;
        });
      },
      child: GestureDetector(
        onTap: widget.click,
        child: Text(
          widget.text,
          style: kMiniTitleTextStyleWhite.copyWith(
            color: color,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
