



import 'dart:ui';

class DashboardCategoriesModel{

  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title,this.heading,this.subHeading,this.onPress);

  static List<DashboardCategoriesModel> list =[

    DashboardCategoriesModel("JS", "JavaScript", "10 Lessons", null),
    DashboardCategoriesModel("F", "Flutter", "10 Lessons", null),
    DashboardCategoriesModel("H", "HTML", "10 Lessons", null),
    DashboardCategoriesModel("K", "Kotlin", "10 Lessons", null),
  ];
}