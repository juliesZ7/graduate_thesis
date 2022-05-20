import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
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
                      border: Border.all(color: Color(0xffF27405))),
                  child: Row(children: [
                    Text("Your Vault"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.wallet)
                  ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
