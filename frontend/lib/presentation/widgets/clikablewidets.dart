import 'package:flutter/material.dart';

class ClikableWidget extends StatelessWidget {
  const ClikableWidget(
      {super.key, required this.child, required this.tapfunction});

  final Widget child;
  final void Function()? tapfunction;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: MaterialStateMouseCursor.clickable,
      child: GestureDetector(
        onTap: tapfunction,
        child: child,
      ),
    );
  }
}
