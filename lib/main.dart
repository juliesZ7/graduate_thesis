import 'package:flutter/material.dart';
import 'package:graduate_thesis/Screen/Homepage/home_page.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          fontFamily: 'PlusJakartaSans',
        )),
  );
}
