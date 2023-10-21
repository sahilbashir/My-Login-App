import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/authenticaion_repositiary.dart';
import 'package:my_login_app/repositiry/user_repositary/user_repositary.dart';

import '../models/user_model.dart';
import '../screens/forgot_password/forgot_password_otp/otp_screen.dart';

class SignUpController extends GetxController {


  static SignUpController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
final userRepo =Get.put(UserRepository());

  void registerUser(String email, String password) {
    String? error = AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password) as String?;

    if (error != null) {
      Get.showSnackbar(GetSnackBar(message: error.toString(),));
    }
  }
Future<void> createUser(UserModel user)async{
    await userRepo.createUser(user);
    phoneAuthentication(user.phoneNo);
    Get.to(()=> const OTPScreen());
}

  void phoneAuthentication(String phoneNo) {
    AuthenticationRepository.instance.phoneAuthentication(phoneNo);
  }
}