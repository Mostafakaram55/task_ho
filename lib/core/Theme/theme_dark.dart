import 'package:flutter/material.dart';

import '../Manager/ColorManager_dark.dart';

dynamic getThemeDataDark()=>ThemeData(
  disabledColor: ColorManagerDark.textColor,
  backgroundColor: ColorManagerDark.buttonNavigationBarIcon,
  splashColor: ColorManagerDark.lightGrayOver,
  cardColor: ColorManagerDark.buttonColor,
  primaryColor: ColorManagerDark.primary,
  buttonTheme: ButtonThemeData(
    buttonColor: ColorManagerDark.buttonColor,
    splashColor: ColorManagerDark.buttonColor,
  ),
  bottomNavigationBarTheme:BottomNavigationBarThemeData(
    backgroundColor: ColorManagerDark.buttonNavigationBarIcon,
    elevation: 20,
    selectedItemColor:ColorManagerDark.buttonColor,
    unselectedItemColor:ColorManagerDark.lightGrayOver,
  ),

);