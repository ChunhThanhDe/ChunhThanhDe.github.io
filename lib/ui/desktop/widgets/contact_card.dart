import 'package:bot_toast/bot_toast.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/utils/constants.dart';

class ContactCard extends StatelessWidget {
  final String content;
  final IconData icon;

  const ContactCard({
    Key? key,
    required this.content,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FlutterClipboard.copy(content);
        BotToast.showText(
          duration: const Duration(seconds: 6),
          text: texts.general.copy,
          textStyle: kNormalTextStyleGrey,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Row(
          children: [
            Flexible(
              child: Icon(
                icon,
                color: const Color(0xffB3A595),
                size: 35,
              ),
            ),
            const SizedBox(width: 30),
            Flexible(
              child: Text(
                content,
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
