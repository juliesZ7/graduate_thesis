import 'package:flutter/material.dart';
import 'package:graduate_thesis/style_guide/style_guide.dart';

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
                                ColorGuide().primary4),
                            SizedBox(
                              width: 10,
                            ),
                            IconSet().wallet
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
                    child: Container(
                      decoration: BoxDecoration(
                          color: ColorGuide().text3,
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: Row(children: [
                        IconSet().search,
                        SizedBox(
                          width: 16,
                        ),
                        input("Type account name", FontWeight.w500,
                            ColorGuide().text5)
                      ]),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
