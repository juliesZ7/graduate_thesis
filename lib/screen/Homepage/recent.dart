import 'package:flutter/material.dart';
import 'package:graduate_thesis/components_library/system/clickable_widget.dart';

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
          SizedBox(
            height: 16,
          ),
          recentAccountItem(StickerName().facebook, "Facebook",
              "vinhkygm@gmail.com", "**********"),
          SizedBox(
            height: 16,
          ),
          recentAccountItem(StickerName().google, "Google",
              "vinhkygm@gmail.com", "**********"),
          SizedBox(
            height: 16,
          ),
          recentAccountItem(StickerName().google, "Google",
              "vinhkygm@gmail.com", "**********"),
          SizedBox(
            height: 16,
          ),
          recentAccountItem(StickerName().google, "Google",
              "vinhkygm@gmail.com", "**********"),
          SizedBox(
            height: 16,
          ),
          recentAccountItem(StickerName().google, "Google",
              "vinhkygm@gmail.com", "**********"),
          SizedBox(
            height: 16,
          ),
          ClickableWidget(
              child: Container(
                  height: 44,
                  alignment: Alignment.centerLeft,
                  child: input(
                      "Show more", FontWeight.w700, ColorGuide().text1, 14)),
              function: () {})
        ],
      ),
    );
  }
}

Widget recentAccountItem(
    String logoName, String title, String username, String password) {
  return Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
    Expanded(
      child: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            sticker(logoName, 32),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: ColorGuide().text1,
                        fontSize: 16,
                        overflow: TextOverflow.ellipsis),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  input(username, FontWeight.normal, ColorGuide().text1, 14),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    password,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: ColorGuide().text1,
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    SizedBox(
      width: 16,
    ),
    ClickableWidget(
        function: () {},
        child: Container(
          width: 24,
          height: 24,
          child: Icon(
            Icons.remove_red_eye,
            size: 24,
          ),
        ))
  ]);
}
