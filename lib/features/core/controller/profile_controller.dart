import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/authenticaion_repositiary.dart';
import 'package:my_login_app/repositiry/user_repositary/user_repositary.dart';

import '../../authentication/models/user_model.dart';

class ProfileController extends GetxController{

  static ProfileController get instance=> Get.find();




  final _authRepo=Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());
  getUserData(){
    final email= _authRepo.firebaseUser.value?.email;
    if(email!=null){
      return _userRepo.getUserDetails(email);
    }else{
      Get.snackbar("Error", "Login to Continue");
    }
  }

  Future<List<UserModel>> getAllUsers()async => await _userRepo.allUser();
  updateRecord(UserModel user)async{
    await _userRepo.updateUserRecord(user);
  }
}