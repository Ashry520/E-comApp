import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme {
  static Color primaryLight = Color(0xFF004182);
  static Color blackColor = Color(0xFF000000);
  static Color whiteColor = Color(0xffF8F8F8);
  static Color redColor = Color(0xffBB3219);
  static Color blueColor = Color(0xff06004F);
  static Color lightGreyColor = Color(0x4D004182);
  static Color greyColor = Color(0x9806004f);
  ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            color: MyTheme.primaryLight),
        titleMedium: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: MyTheme.blueColor),
        titleSmall: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: MyTheme.blueColor),
        labelMedium: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: MyTheme.whiteColor),
        labelSmall: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: MyTheme.whiteColor),
        bodySmall: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: MyTheme.greyColor),
      ));
}
