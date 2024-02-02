import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterSection extends StatefulWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      color: const Color(0xff15202B),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
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
            child: GestureDetector(
              onTap: () async {
                await launch(
                  'https://www.linkedin.com/in/erick-namukolo-a49482202/',
                );
              },
              child: Text(
                'Designed & Built by Erick Namukolo',
                style: kNormalTextStyleGrey.copyWith(
                  color: _isHovered ? kPrimaryColor : const Color(0xffB3A595),
                  fontWeight: _isHovered ? FontWeight.bold : null,
                ),
              ),
            ),
          ),
          Text(
            '© 2021 - ${DateTime.now().year} Erick Namukolo. All rights reserved.',
            style: kNormalTextStyleGrey.copyWith(
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
