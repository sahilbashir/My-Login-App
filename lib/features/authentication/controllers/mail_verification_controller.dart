import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_login_app/constants/text_strings.dart';

import '../../../repositiry/authentication_repositiary/authenticaion_repositiary.dart';

class MailVerificationController extends GetxController{
late Timer _timer;
  @override

  void init(){


    super.onInit();
    sendVerificationMail();
    setTimerForAutoRedirect();
  }

  Future<void> sendVerificationMail()async{

    try{
      await AuthenticationRepository.instance.sendEmailVerification();
    }catch(e){
    //  Helper.errorSnackbar(title:tOhSnap,message:e.toString());
    GetSnackBar(title: tOhSnap,message: e.toString(),);
    }

  }



  void setTimerForAutoRedirect(){

    _timer=Timer.periodic(const Duration(seconds: 3), (timer) {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;

      if(user!.emailVerified){
       timer.cancel();
       AuthenticationRepository.instance.setInitialScreen(user);
      }
    });
  }



  void manuallyCheckEmailVerificationStatus(){

    FirebaseAuth.instance.currentUser?.reload();
    final user=FirebaseAuth.instance.currentUser;
    if(user!.emailVerified){
      AuthenticationRepository.instance.setInitialScreen(user);
    }
  }
}