import 'package:flutter/material.dart';

class HoverContainer extends StatefulWidget {
  final Widget child;
  final Function() click;

  const HoverContainer({
    Key? key,
    required this.child,
    required this.click,
  }) : super(key: key);

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
        onTap: widget.click,
        child: AnimatedContainer(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          duration: const Duration(seconds: 2),
          curve: Curves.ease,
          color: _isHovered ? const Color(0xff15202B) : null,
          width: double.infinity,
          child: widget.child,
        ),
      ),
    );
  }
}
