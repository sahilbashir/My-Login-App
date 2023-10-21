//import 'dart:html';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/authentication/models/user_model.dart';

class UserRepository extends GetxController{

  static UserRepository get instance => Get.find();


  final _db= FirebaseFirestore.instance;

  //added Future <void> by self
   //Future<void>
  //store user in firestore
   createUser(UserModel user)async {

   await _db.collection("Users").add(user.toJson())
        .whenComplete(() => Get.snackbar("Success", "Your Account has been created.",
    snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.green.withOpacity(0.1),
      colorText: Colors.green
    ),
    )
        .catchError((error,stackTree){
          Get.snackbar("Error", "Something Went Wrong .Please Try Again",
          snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.redAccent.withOpacity(0.1),
            colorText: Colors.red
          );
          print(error.toString());
    });
  }

  //fetch all users
Future<UserModel> getUserDetails(String email)async{

     final snapshot= await _db.collection("Users").where("Email",isEqualTo: email).get();
     final userData = snapshot.docs.map((e)=>UserModel.fromSnapshot(e)).single;
     return userData;
}

  Future<List<UserModel>> allUser()async{

    final snapshot= await _db.collection("Users").get();
    final userData = snapshot.docs.map((e)=>UserModel.fromSnapshot(e)).toList();
    return userData;
  }


Future<void> updateUserRecord(UserModel user) async{
     await _db.collection("Users").doc(user.id).update(user.toJson());
}

}