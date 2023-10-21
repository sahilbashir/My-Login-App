import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_login_app/constants/sizes.dart';
import 'package:my_login_app/constants/text_strings.dart';
import 'package:my_login_app/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:my_login_app/features/core/screens/dashboard/widgets/banners.dart';
import 'package:my_login_app/features/core/screens/dashboard/widgets/categories.dart';
import 'package:my_login_app/features/core/screens/dashboard/widgets/search.dart';
import 'package:my_login_app/features/core/screens/dashboard/widgets/top_courses.dart';
//import 'package:my_login_app/main.dart';


class DashBoard extends StatelessWidget {
  const DashBoard({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {

    //variable
    final txtTheme=Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Headings
              Text(tDashboardTitle,style:txtTheme.bodyText2 ,),
              Text(tDashboardHeading,style: txtTheme.headline2,),
              const SizedBox(height: tDashboardPadding,),

              //Search bOx
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding,),
              //categories

              DashBoardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding,),

              //Banners

              DashBoardBanners(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding,),
              //Top Course

              Text(tDashboardTopCourses,style: txtTheme.headline4?.apply(fontSizeFactor: 1.2),),
              DashboardTopCourses(txtTheme: txtTheme),

            ],
          ),
        ),
      ),
    );
  }
}





