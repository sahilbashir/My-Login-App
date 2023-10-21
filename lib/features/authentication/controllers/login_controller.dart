import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_login_app/constants/text_strings.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/authenticaion_repositiary.dart';

class LoginController extends GetxController{
  static LoginController get instance=>Get.find();
  final showPassword=false.obs;
  final email=TextEditingController();
  final password=TextEditingController();
  GlobalKey<FormState> loginFormKey=GlobalKey<FormState>();

  //loader
final isLoading=false.obs;
final isGoogleLoading=false.obs;
final isFacebookLoading=false.obs;


Future<void> login()async{
  try{
    isLoading.value=true;
    if(!loginFormKey.currentState!.validate()){
      isLoading.value=false;
      return;
    }
    final auth=AuthenticationRepository.instance;
    await auth.loginWithEmailAndPassword(email.text.trim(), password.text.trim());
  auth.setInitialScreen(auth.FirebaseUser);
  }
  catch(e){
    isLoading.value=false;
   // Helper.errorSnackbar(title:tOhSnap,message:e.toString());
  GetSnackBar(title: tOhSnap,message: e.toString(),);
  }
}
}