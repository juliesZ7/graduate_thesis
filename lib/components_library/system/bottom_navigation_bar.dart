import 'package:flutter/material.dart';
import 'package:graduate_thesis/components_library/system/clickable_widget.dart';
import 'package:graduate_thesis/style_guide/style_guide.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<AppBottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
          color: ColorGuide().text3, boxShadow: [Shadow().light1]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        navigationItem(icon(IconName().home, ColorGuide().primary1, 24),
            ColorGuide().primary1),
        navigationItem(icon(IconName().random, ColorGuide().text5, 24),
            Colors.transparent),
        navigationItem(icon(IconName().settings, ColorGuide().text5, 24),
            Colors.transparent),
      ]),
    );
  }
}

Widget navigationItem(Widget logo, Color color) {
  return ClickableWidget(
    function: () {},
    child: Container(
      height: 72,
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: 48,
          height: 4,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        SizedBox(
          height: 20,
        ),
        logo
      ]),
    ),
  );
}
