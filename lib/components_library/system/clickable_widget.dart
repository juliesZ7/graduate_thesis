import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:graduate_thesis/components_library/system/bottom_navigation_bar.dart';

class ClickableWidget extends StatefulWidget {
  final Widget child;
  final VoidCallback function;
  const ClickableWidget({Key? key, required this.child, required this.function})
      : super(key: key);

  @override
  State<ClickableWidget> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<ClickableWidget> {
  @override
  Widget build(BuildContext context) {
    return clickableWidget(widget.child, widget.function);
  }

  Widget clickableWidget(Widget child, VoidCallback function) {
    return TextButton(
      onPressed: function,
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      child: child,
    );
  }
}
