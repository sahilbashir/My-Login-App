//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class DashBoardBanners extends StatelessWidget {
  const DashBoardBanners({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  const [
                  Flexible(child: Image(image: AssetImage(tForgotImage),),),
                  Flexible(child: Image(image: AssetImage(tForgotImage),)),

                ],
              ),
              const SizedBox(height: 25,),
              Text(tDashboardBannerTitle1,style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
              Text(tDashboardBannerSubTitle,style: txtTheme.bodyText2,maxLines: 1,overflow: TextOverflow.ellipsis,),
            ],
          ),
        ),
        ),
        const SizedBox(width: tDashboardCardPadding,),
        Expanded(

          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                child:   Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(child: Image(image: AssetImage(tForgotImage),),),
                        Flexible(child: Image(image: AssetImage(tForgotImage),)),

                      ],
                    ),
                    const SizedBox(height: 25,),
                    Text(tDashboardBannerTitle2,style: txtTheme.headline4,maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text(tDashboardBannerSubTitle,style: txtTheme.bodyText2,maxLines: 1,overflow: TextOverflow.ellipsis,),
                  ],

                ),
              ),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: const Text(tDashboardButton))),
            ],
          ),
        ),

      ],
    );
  }
}