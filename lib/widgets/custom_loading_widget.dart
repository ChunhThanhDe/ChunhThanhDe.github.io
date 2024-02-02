import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:profile/utils/constants.dart';
import '../utils/colors.dart';

import '../utils/responsive_breakpoints.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = _screenWidth < kTabletBreakpoint;
    return Container(
      width: double.infinity,
      height: isMobile ? 150 : 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoadingAnimationWidget.bouncingBall(color: kPrimaryColor, size: 40.0),
          SizedBox(height: isMobile ? 0.0 : 10.0),
          const Text(
            'Loading',
            style: kNormalTextStyleWhite,
          )
        ],
      ),
    );
  }
}
