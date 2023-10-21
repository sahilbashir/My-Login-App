import 'package:get/get.dart';

import '../../features/authentication/screens/on_boarding/on_boarding_screen.dart';
import '../../features/authentication/screens/welcome_screen/welcome_screen.dart';


class FadeInAnimationController extends GetxController{
static FadeInAnimationController get find =>Get.find();
  RxBool animate=false.obs;





Future startSplashAnimation() async {
  await Future.delayed(const Duration(milliseconds: 500));
  animate.value=true;
  await Future.delayed(const Duration(milliseconds: 3000));
  animate.value=false;
  await Future.delayed(const Duration(milliseconds: 5000));
  //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome)

  //TODO
  //changed WelcomeScreen() to onBoardingScreen
  Get.to(WelcomeScreen());

}



Future startAnimation() async {
  await Future.delayed(const Duration(milliseconds: 500));
  animate.value=true;


}
}