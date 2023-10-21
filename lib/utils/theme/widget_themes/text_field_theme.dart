import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class TTextFormFieldTheme{

  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme=

   InputDecorationTheme(
    //label: Text(tFullName),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    prefixIconColor: tSecondaryColor,
    //prefixIcon: Icon(Icons.person_outline_rounded,color: tSecondaryColor,),
    floatingLabelStyle: const TextStyle(color: tSecondaryColor),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(width: 2.0,color: tSecondaryColor),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme=
  InputDecorationTheme(
    //label: Text(tFullName),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
    //prefixIcon: Icon(Icons.person_outline_rounded,color: tPrimaryColor,),
    prefixIconColor: tPrimaryColor,
      floatingLabelStyle: TextStyle(color: tPrimaryColor),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide: const BorderSide(width: 2.0,color: tPrimaryColor),
    ));
}