import 'package:flutter/widgets.dart';

class TabButton {
  String title;
  IconData icon;
  bool isSelected;
  String? des;
  VoidCallback? click;

  TabButton({
    required this.title,
    required this.icon,
    this.des,
    this.click,
    this.isSelected = false,
  });
}
