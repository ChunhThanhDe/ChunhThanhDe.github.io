import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';

class CustomAnimatedAvatarGlowSwitcher extends StatefulWidget {
  final double screenWidth;

  // 0 is desktop
  // 1 is tablet
  // 2 is phone
  final int isDevice;

  const CustomAnimatedAvatarGlowSwitcher({
    required this.screenWidth,
    required this.isDevice,
  }) : super();

  @override
  _CustomAnimatedAvatarGlowSwitcherState createState() => _CustomAnimatedAvatarGlowSwitcherState();
}

class _CustomAnimatedAvatarGlowSwitcherState extends State<CustomAnimatedAvatarGlowSwitcher> {
  bool _showAvatar = true;
  late Timer _timerchange;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  void _startTimer() {
    _timerchange = Timer.periodic(Duration(seconds: 6), (Timer timer) {
      setState(() {
        _showAvatar = !_showAvatar;
      });
    });
  }

  void _stopTimer() {
    _timerchange.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      endRadius: widget.isDevice == 0
          ? (widget.screenWidth < 1700 ? widget.screenWidth * .15 : 340)
          : widget.isDevice == 2
              ? 160
              : 120.0 * 1.3,
      animate: true,
      glowColor: kPrimaryColor,
      repeat: true,
      duration: Duration(seconds: 3),
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 1000),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
        child: _showAvatar
            ? CircleAvatar(
                foregroundImage: AssetImage('assets/avatar.png'),
                backgroundColor: klightDarkColor,
                radius: widget.isDevice == 0
                    ? (widget.screenWidth * .099)
                    : widget.isDevice == 2
                        ? 90
                        : 90 * 1.3,
                key: ValueKey<bool>(true),
              )
            : CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D5603AQE94bklZfqiEQ/profile-displayphoto-shrink_800_800/0/1692931978549?e=1712793600&v=beta&t=sqt0zfsGgZ9MiTZGNSzqWVlYycgr6s-TXkQ_eOuIc94',
                ),
                backgroundColor: klightDarkColor,
                radius: widget.isDevice == 0
                    ? (widget.screenWidth * .099)
                    : widget.isDevice == 2
                        ? 90
                        : 90 * 1.3,
                key: ValueKey<bool>(false),
              ),
      ),
    );
  }
}
