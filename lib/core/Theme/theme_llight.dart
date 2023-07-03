import 'package:flutter/material.dart';

import '../Manager/Color_Manager.dart';

ThemeData getThemeDataLight()=>ThemeData(
  disabledColor: ColorManager.black,
  backgroundColor: ColorManager.secondColor,
  splashColor: ColorManager.descriptionColor,
  primaryColor: ColorManager.primary,
  cardColor: ColorManager.descriptionColor,
  buttonTheme: ButtonThemeData(
    buttonColor: ColorManager.buttonColor,
    splashColor: ColorManager.buttonColor,
  ),
  bottomNavigationBarTheme:BottomNavigationBarThemeData(
    backgroundColor: ColorManager.primary,
    elevation: 20,
    selectedItemColor:ColorManager.buttonColor,
    unselectedItemColor:ColorManager.gray,
  ),

);