
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:my_login_app/common_widgets/fade_in_animations/fade_in_animation_model.dart';

import '../../constants/image_strings.dart';
import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
   TFadeInAnimation({
    Key? key,
  //  required this.controller,
    required this.durationInMs,
     required this.child,
     required this.animate,

  }) : super(key: key);

  final controller =Get.put(FadeInAnimationController());
  final int durationInMs;
  final TAnimatePosition? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          ()=> AnimatedPositioned(
          duration:  Duration(milliseconds: durationInMs),
          top: controller.animate.value ? animate!.topAfter : animate!.topBefore,
          left: controller.animate.value ? animate!.leftAfter : animate!.leftBefore,
              bottom: controller.animate.value ? animate!.bottomAfter : animate!.bottomBefore,
              right: controller.animate.value ? animate!.rightAfter : animate!.rightBefore,
          child: AnimatedOpacity(
            duration:  Duration(milliseconds: durationInMs),
            opacity: controller.animate.value? 1:0,
           child:child ,
           // child: Image(image: AssetImage(tSplashTopIcon),width: 100,height: 100,
            ),

          ),
      );
    //);
  }
}
