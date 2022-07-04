import 'package:flutter/material.dart';

abstract class AppBarStyle {
  static final TextStyle text_style =
      TextStyle(color: Colors.white, fontSize: 16);

  static final OutlineInputBorder focused = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(30));

  static final OutlineInputBorder enabled = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(30));

  static final BoxDecoration boxDecoration = BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(30));
}







// class Button_Style extends StatelessWidget {
//   const Button_Style({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }
