import 'package:flutter/material.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';

class BasicButton extends StatefulWidget {
  final String text;
  final Function() click;
  final bool isSending;
  final double? wid;

  const BasicButton({
    Key? key,
    required this.text,
    required this.click,
    this.wid,
    this.isSending = false,
  }) : super(key: key);

  @override
  State<BasicButton> createState() => _BasicButtonState();
}

class _BasicButtonState extends State<BasicButton> {
  Color buttonColor = klightDarkColor;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) {
        setState(() {
          buttonColor = const Color(0xff15202B);
        });
      },
      onExit: (_) {
        setState(() {
          buttonColor = klightDarkColor;
        });
      },
      child: GestureDetector(
        onTap: widget.click,
        child: Container(
          height: widget.wid == null ? 50 : 45,
          width: widget.wid ?? 170,
          child: Center(
            child: widget.isSending
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    widget.text,
                    style: kNormalTextStyleWhite,
                  ),
          ),
          decoration: BoxDecoration(
            border: Border.all(color: kPrimaryColor, width: 2.0),
            color: widget.isSending ? Colors.grey : buttonColor,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(4, 6),
                color: const Color(0xff000000).withOpacity(.16),
                blurRadius: 4.0,
                spreadRadius: 2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
