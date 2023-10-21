import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{



final controller=LiquidController();
RxInt currentPage=0.obs;
final pages=[
  OnBoardingPageWidget(model: OnBoardingModel(
      image: tSplashImage,
      title: tOnBoardingTitle1,
      subTitle: tOnBoardingSubTitle1,
      counterText: tOnBoardingCounter1,
      //height: size.height,
      bgColor: tOnBoardingPage1Color
  ),
  ),
  OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingScreenPage2,
      title: tOnBoardingTitle2,
      subTitle: tOnBoardingSubTitle2,
      counterText: tOnBoardingCounter2,
     // height: size.height,
      bgColor: tOnBoardingPage2Color
  ),
  ),
  OnBoardingPageWidget(model: OnBoardingModel(
      image: tOnBoardingScreenPage3,
      title: tOnBoardingTitle3,
      subTitle: tOnBoardingSubTitle3,
      counterText: tOnBoardingCounter3,

      bgColor: tOnBoardingPage3Color
  ),
  ),
];
Skip()=>controller.jumpToPage(page: 2);
animateToNextSlide() {
  int nextPage = controller.currentPage + 1;
  controller.animateToPage(page: nextPage);
}
onPageChangedCallback(int activePageIndex){
  currentPage.value=activePageIndex;

}
}