import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../models/dashboard/top_courses_model.dart';

class DashboardTopCourses extends StatelessWidget {
  const DashboardTopCourses({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    final list=DashboardTopCoursesModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
itemCount: list.length,
        itemBuilder: (context,index)=> GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text(list[index].title,style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        ),
                         Flexible(child: Image(image: AssetImage(list[index].image),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style:ElevatedButton.styleFrom(shape:const CircleBorder()),
                          onPressed: (){}, child:const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: tDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(list[index].heading,style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text(list[index].subHeading,style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //children: [
       /*   SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Flutter Crash Course",style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        ),
                         const Flexible(child: Image(image: AssetImage(tForgotImage),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style:ElevatedButton.styleFrom(shape:const CircleBorder()),
                          onPressed: (){}, child:const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: tDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections",style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Programming languages",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),*/
       /*   SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Flutter Crash Course",style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        ),
                        const Flexible(child: Image(image: AssetImage(tForgotImage),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style:ElevatedButton.styleFrom(shape:const CircleBorder()),
                          onPressed: (){}, child:const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: tDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections",style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Programming languages",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),*/
          /*SizedBox(
            width: 320,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10,top: 5),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: Text("Flutter Crash Course",style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                        ),
                        const Flexible(child: Image(image: AssetImage(tForgotImage),height: 110,)),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          style:ElevatedButton.styleFrom(shape:const CircleBorder()),
                          onPressed: (){}, child:const Icon(Icons.play_arrow),
                        ),
                        const SizedBox(width: tDashboardCardPadding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("3 Sections",style: txtTheme.headline4,overflow: TextOverflow.ellipsis,),
                            Text("Programming languages",style: txtTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),*/

        //],
      ),
    );
  }
}