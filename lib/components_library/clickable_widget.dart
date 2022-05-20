import 'package:flutter/material.dart';

class ClickableWidget extends StatefulWidget {
  final Widget child;
  final String navigation;
  const ClickableWidget({Key? key,required this.child,required this.navigation}) : super(key: key);
  

  @override
  State<ClickableWidget> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<ClickableWidget> {
  @override
  Widget build(BuildContext context) {
    return clickableWidget(widget.child);
  }
}


Widget clickableWidget(Widget child){
return InkWell(onTap: (){}, child: child,);
}