import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:my_login_app/constants/colors.dart';
import 'package:my_login_app/constants/image_strings.dart';
import 'package:my_login_app/constants/sizes.dart';
import 'package:my_login_app/constants/text_strings.dart';
import 'package:my_login_app/features/authentication/controllers/on_boarding_controller.dart';
import 'package:my_login_app/features/authentication/models/model_on_boarding.dart';
import 'package:my_login_app/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {

final obcontroller=OnBoardingController();


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(pages: obcontroller.pages,
            liquidController: obcontroller.controller,
          onPageChangeCallback: obcontroller.onPageChangedCallback,
          slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
              child: OutlinedButton(
           onPressed: ()=>obcontroller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color:Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white,
                ),
                child: Container(
padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: tDarkColor,shape: BoxShape.circle
                  ),
                  child: Icon(Icons.arrow_forward_ios),
                ),
          ),

          ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
            onPressed: ()=>obcontroller.Skip(),
            child: const Text("Skip",style: TextStyle(color: Colors.grey),),
          )),
          Obx(
              ()=> Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
              activeIndex: obcontroller.currentPage.value,
              count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
            )),
          )
        ],
      ),
    );
  }

}


