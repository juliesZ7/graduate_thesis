import 'package:flutter/material.dart';
import 'package:graduate_thesis/screen/Homepage/category.dart';
import 'package:graduate_thesis/screen/Homepage/recent.dart';
import 'package:graduate_thesis/style_guide/style_guide.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    String? searchText;
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
                            input("Your vault", FontWeight.w700,
                                ColorGuide().primary4, 14),
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
                  height: 44,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Form(
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
                          Expanded(
                              child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Type account name",
                              hintStyle: TextStyle(
                                  color: ColorGuide().text5, fontSize: 14),
                            ),
                            onSaved: (value) => searchText = value,
                          )),
                        ]),
                      ),
                    ),
                    // child: TextField(controller: searchText,),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 24,
          ),
          CategoryFeature(),
          SizedBox(
            height: 16,
          ),
          RecentAccountFeature()
        ],
      ),
    );
  }
}
