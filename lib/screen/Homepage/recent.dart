import 'package:flutter/material.dart';

import '../../style_guide/style_guide.dart';

class RecentAccountFeature extends StatelessWidget {
  const RecentAccountFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      width: screenWidth,
      decoration: BoxDecoration(
          color: ColorGuide().text3,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [Shadow().light1]),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          input("Recent", FontWeight.w800, ColorGuide().primary1, 16),
        ],
      ),
    );
  }
}
