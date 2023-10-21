


import 'package:flutter/cupertino.dart';
import 'package:my_login_app/constants/image_strings.dart';


class DashboardTopCoursesModel{

  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;
final String image;
  DashboardTopCoursesModel(this.title,this.heading,this.subHeading,this.onPress,this.image);

  static List<DashboardTopCoursesModel> list =[

    DashboardTopCoursesModel("JS", "JavaScript", "10 Lessons", null,tForgotImage),
    DashboardTopCoursesModel("F", "Flutter", "10 Lessons", null,tForgotImage),
    DashboardTopCoursesModel("H", "HTML", "10 Lessons", null,tForgotImage),
    DashboardTopCoursesModel("K", "Kotlin", "10 Lessons", null,tForgotImage),
  ];
}