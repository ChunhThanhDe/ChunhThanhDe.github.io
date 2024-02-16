import 'package:flutter/cupertino.dart';

class PopupMenuItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const PopupMenuItemWidget({
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(icon),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
