import 'package:flutter/material.dart';
import 'package:nukakao/resources/app_color.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      colorScheme: ColorScheme.light().copyWith(
        primary: AppColor.h0066ff,
      ),
      fontFamily: 'NotoSans',
      brightness: Brightness.light,
      primaryColor: AppColor.h0066ff,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: AppColor.h0066ff,
      )),
      appBarTheme: AppBarTheme(color: Colors.white),
      scaffoldBackgroundColor: Colors.white,
      inputDecorationTheme: InputDecorationTheme(
          isDense: true,
          contentPadding: EdgeInsets.fromLTRB(0, 12, 0, 12),
          errorStyle: TextStyle(
            color: AppColor.hf62626,
            fontFamily: "NotoSans",
            fontSize: 10,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.h0066ff),
          ),
          hintStyle: TextStyle(
            color: AppColor.h999999,
            fontSize: 14,
            fontFamily: "NotoSans",
          )),
      textSelectionTheme: TextSelectionThemeData(cursorColor: AppColor.h0066ff),
      errorColor: AppColor.hf62626,
      disabledColor: AppColor.h999999,
      iconTheme: IconThemeData(color: AppColor.h666666));

  static final darkTheme = ThemeData(
      colorScheme: ColorScheme.dark().copyWith(
        primary: AppColor.h0066ff,
      ),
      fontFamily: 'NotoSans',
      brightness: Brightness.dark,
      primaryColor: AppColor.h0066ff,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        primary: AppColor.h0066ff,
      )),
      inputDecorationTheme: InputDecorationTheme(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColor.h0066ff),
          ),
          hintStyle: TextStyle(
            color: AppColor.h999999,
            fontSize: 14,
            fontFamily: "NotoSans",
          )),
      errorColor: AppColor.hf62626,
      disabledColor: AppColor.h999999,
      textSelectionTheme: TextSelectionThemeData(cursorColor: AppColor.h0066ff),
      appBarTheme: AppBarTheme(color: AppColor.h666666, iconTheme: IconThemeData(color: Colors.white)),
      iconTheme: IconThemeData(color: Colors.white));
}
