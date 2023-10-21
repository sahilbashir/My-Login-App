import 'package:get/get.dart';
import 'package:my_login_app/features/core/screens/dashboard/dashboard.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/authenticaion_repositiary.dart';

class OTPController  extends GetxController{

  static OTPController get instance=>Get.find();

  void verifyOTP(String otp) async{

    var isVerified= await AuthenticationRepository.instance.verifyOTP(otp);

    isVerified ? Get.offAll(const DashBoard()): Get.back();
  }
}