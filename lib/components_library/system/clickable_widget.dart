import 'package:flutter/material.dart';

class ClickableWidget extends StatefulWidget {
  final Widget child;
  final Function function;
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
}

Widget clickableWidget(Widget child, Function function) {
  return TextButton(
    onPressed: () {
      function;
    },
    style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent)),
    child: child,
  );
}
