import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

//Color
class ColorGuide {
  Color primary1 = Color(0xff5068F2);
  Color primary2 = Color(0xff485DD9);
  Color primary3 = Color(0xffF2E205);
  Color primary4 = Color(0xffF27405);
  Color primary5 = Color(0xffF20505);
  Color text1 = Color(0xff222831);
  Color text2 = Color(0xff393E46);
  Color text3 = Color(0xffFFFFFF);
  Color text4 = Color(0xffD9D9D9);
  Color text5 = Color(0xffA6A6A6);
  Color shadow = Color(0xff4F758C);
  Color shade1 = Color(0xffF3F4F4);
  Color shade2 = Color(0xffF9F9F9);
  Color shade3 = Color(0xffEEEEEE);
  Color shade4 = Color(0xffF2F2F2);
  Color shade5 = Color(0xffD9D9D9);
  Color shade6 = Color(0xffA6A6A6);
  Color shade7 = Color(0xff737373);
  Color shade8 = Color(0xff0D0D0D);
  Color shade9 = Color(0xffE9F0FF);
  Color inactive1 = Color(0xffE1E5E7);
  Color inactive2 = Color(0xffF5F6F6);
  Color successful1 = Color(0xff53A62D);
  Color successful2 = Color(0xff9CD918);
  Color successful3 = Color(0xffB6D96A);
  Color failed = Color(0xffF6416C);
  Color warning = Color(0xffFFDE7D);
}

//Icon
class IconSet {
  Widget home =
      iconHolder("assets/icons/fi-rr-home.svg", ColorGuide().text1, 24);
  Widget settings =
      iconHolder("assets/icons/setting-1881213.svg", ColorGuide().text1, 24);
  Widget google = sticker("assets/icons/google.svg", 24);
  Widget youtube = sticker("assets/icons/youtube.svg", 24);
  Widget spotify = sticker("assets/icons/spotify.svg", 24);
  Widget facebook = sticker("assets/icons/facebook.svg", 24);
  Widget instagram = sticker("assets/icons/instagram.svg", 24);
  Widget socialMedia = sticker("assets/icons/social-media.svg", 24);
  Widget games = sticker("assets/icons/controller.svg", 24);
  Widget works = sticker("assets/icons/suitcase.svg", 24);
  Widget add =
      iconHolder("assets/icons/circle-add.svg", ColorGuide().text1, 24);
  Widget copy =
      iconHolder("assets/icons/documents.svg", ColorGuide().text1, 24);
  Widget others = sticker("assets/icons/other.svg", 24);
  Widget lock = sticker("assets/icons/padlock.svg", 24);
  Widget wallet = sticker("assets/icons/purse.svg", 24);
  Widget search =
      iconHolder("assets/icons/search-1.svg", ColorGuide().text1, 24);
  Widget blankSearch =
      iconHolder("assets/icons/search.svg", ColorGuide().text1, 24);
  // Widget  = iconHolder("", ColorGuide().text1, 24);
  // Widget  = sticker("",  24);

}

Widget iconHolder(String string, Color? color, double size) {
  return SvgPicture.asset(
    string,
    color: color,
    width: size,
    height: size,
  );
}

Widget sticker(String string, double size) {
  return SvgPicture.asset(
    string,
    width: size,
    height: size,
  );
}

//Typography

Text input(String string, FontWeight fontWeight, Color color) {
  return Text(
    string,
    style: TextStyle(fontWeight: fontWeight, color: color),
  );
}

//ShadowSetting

class Shadow {}
