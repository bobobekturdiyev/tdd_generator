import 'package:flutter/material.dart';

abstract class Styles {
  Styles._();

  static TextStyle getButtonStyle() => const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );
  //SIZE 20///////////////////////
  // static TextStyle getTitleStyle() => const TextStyle(
  //       fontSize: 18,
  //       color: AppColors.black,
  //       fontWeight: FontWeight.w700,
  //       fontFamily: "Lato",
  //     );
}
