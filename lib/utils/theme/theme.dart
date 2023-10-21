

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_login_app/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:my_login_app/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:my_login_app/utils/theme/widget_themes/text_field_theme.dart';
import 'package:my_login_app/utils/theme/widget_themes/text_theme.dart';

class TAppTheme{

  TAppTheme._();
//light theme created here and will be used from here using import
  static ThemeData lightTheme=ThemeData(brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
   // elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom()),
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
  );



//dark theme created here and will be used from here using import

  static ThemeData darkTheme=ThemeData(brightness: Brightness.light,
      textTheme:TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
  inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

}