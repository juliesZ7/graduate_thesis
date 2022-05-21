import 'package:flutter/material.dart';
import 'package:graduate_thesis/style_guide/style_guide.dart';

class DefaultButton extends StatefulWidget {
  final String text;
  final FontWeight fontWeight;
  final Color textColor;
  final Color buttonColor;
  final double fontSize;
  const DefaultButton(
      {Key? key,
      required this.text,
      required this.fontWeight,
      required this.textColor,
      required this.buttonColor,
      required this.fontSize})
      : super(key: key);

  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return defaultButton(widget.text, widget.fontWeight, widget.textColor,
        widget.fontSize, screenWidth, widget.buttonColor);
  }
}

Widget defaultButton(String text, FontWeight fontWeight, Color textColor,
    double fontSize, double screenWidth, Color buttonColor) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: InkWell(
        onTap: () {},
        child: Container(
          height: 44,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              color: buttonColor),
          width: screenWidth,
          alignment: Alignment.center,
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: input(text, fontWeight, textColor, fontSize)),
        )),
  );
}
