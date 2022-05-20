import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:graduate_thesis/components_library/buttons.dart';
import 'package:graduate_thesis/style_guide/style_guide.dart';

import '../../components_library/clickable_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorGuide().shade4,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: ColorGuide().text3,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    padding: EdgeInsets.all(24),
                    height: 129,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 44,
                            child: Text("Logo"),
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: ColorGuide().primary4)),
                          child: Row(children: [
                            input("You vault", FontWeight.w700,
                                ColorGuide().primary4,14),
                            SizedBox(
                              width: 10,
                            ),
                            sticker(StickerName().wallet, 24)
                          ]),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  )
                ],
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ClickableWidget(
                      navigation: "NEED TO ADD NAVIGATION!!!!",
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [Shadow().light1],
                            color: ColorGuide().text3,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Row(children: [
                          icon(IconName().search, ColorGuide().primary4, 24),
                          SizedBox(
                            width: 16,
                          ),
                          input("Type account name", FontWeight.w500,
                              ColorGuide().text5,14)
                        ]),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 100,),
          DefaultButton(text: "Hello", fontWeight: FontWeight.w700, textColor: ColorGuide().text3,fontSize: 14,buttonColor: ColorGuide().primary1,),
        ],
      ),
    );
  }
}
