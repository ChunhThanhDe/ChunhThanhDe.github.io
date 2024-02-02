import 'package:flutter/material.dart';
import  'package:profile/utils/constants.dart';

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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xffB3A595),
            size: 35,
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            content,
            style: kNormalTextStyleGrey.copyWith(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
