


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common_widgets/fade_in_animations/animation_design.dart';
import '../../../../common_widgets/fade_in_animations/fade_in_animation_model.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../common_widgets/fade_in_animations/fade_in_animation_controller.dart';

class SplashScreen extends StatelessWidget{

   SplashScreen({Key?key}):super (key:key);

//final splashController=Get.put(SplashScreenController());
  @override
  //void initState() {
    //startAnimation();
  //}

  @override
  Widget build(BuildContext context) {
    var height= MediaQuery.of(context).size.height;
    final controller =Get.put(FadeInAnimationController());
    controller.startSplashAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            TFadeInAnimation(durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 0,topBefore:-30,leftBefore: -30, leftAfter: 0,
            ),
              child: const Image(image:AssetImage(tSplashTopIcon)),
            ),

            TFadeInAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(topBefore: 80,topAfter: 80,leftAfter: tDefaultSize,leftBefore:  -80),
              //child: Obx(

              //()=> AnimatedPositioned(
                //  duration: const Duration(milliseconds: 1600),
                  //top: 80,
                  //left: splashController.animate.value? tDefaultSize:-80,
                  //child: AnimatedOpacity(
                    //duration: const Duration(milliseconds: 1600),
                    //opacity: splashController.animate.value?1:0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tAppName, style: Theme
                            .of(context)
                            .textTheme
                            .headline2,),

                        Text(tAppTagLine, style: Theme
                            .of(context)
                            .textTheme
                            .headline3,),
                      ],
                    ),
                  ),
               // ),
              //),
            //),
          //  Obx(
    //()=> AnimatedPositioned(
      //            duration: const Duration(milliseconds: 2400),
        //          bottom: splashController.animate.value ? 100:0,
TFadeInAnimation(durationInMs: 2400,
    child:const Image(image: AssetImage(tSplashImage)) ,
    animate: TAnimatePosition(bottomBefore: 0,bottomAfter: 100),
),

          //        child: AnimatedOpacity(
            //        duration: const Duration(milliseconds: 1600),
              //      opacity: splashController.animate.value ? 1:0 ,
//add height & width to image here.........
                //    child: Image(image: AssetImage(tSplashImage),height: height*0.5,
                 //   ),
               //   )
            //  ),
          //  ),
          //  Obx(
    //()=> AnimatedPositioned(
                //  duration: const Duration(milliseconds: 1600),
               //   bottom: splashController.animate.value ? 60:0,
                //  right: tDefaultSize,
                //  child: AnimatedOpacity(
                  //  duration: const Duration(milliseconds: 1600),
                  //  opacity: splashController.animate.value ? 1:0,
                  TFadeInAnimation(durationInMs: 2400,
           animate: TAnimatePosition(bottomBefore: 0,bottomAfter: 60,rightBefore: tDefaultSize,rightAfter: tDefaultSize),
                    child: Container(
                      width: tSplashContainerSize,
                      height: tSplashContainerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250),
                      ),
                     // color: tPrimaryColor,
                    ),
                  ),
          ],
              ),
            ),
          //],
        );
      //),
    //);
  }



}
