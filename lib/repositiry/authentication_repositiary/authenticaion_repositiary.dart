import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:my_login_app/features/authentication/screens/mail_verification/mail_verification.dart';
import 'package:my_login_app/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:my_login_app/features/core/screens/dashboard/dashboard.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/exceptions/signup_email_password_failure.dart';

import '../../exceptions/t_exceptions.dart';

class AuthenticationRepository extends GetxController{

  static AuthenticationRepository get instance =>Get.find();

  //variables
late final Rx<User?> _firebaseUser;
final _auth=FirebaseAuth.instance;
late final Rx<User?> firebaseUser;
var verificationId= ''.obs;
//late final GoogleSignInAccount _googleUser;

//getters

  User? get FirebaseUser=> _firebaseUser.value;
  //String get getUserID=> firebaseUser?.uid??"";
  //String get getUserEmail => firebaseUser?.email??"";

@override
  void onReady(){
  firebaseUser= Rx<User?>(_auth.currentUser);
  firebaseUser.bindStream(_auth.userChanges());
    //FlutterNativeSplash.remove();
//  ever(firebaseUser, _setInitialScreen);
setInitialScreen(_firebaseUser.value);
}

setInitialScreen(User? user)async{
  user == null? Get.offAll(()=> const WelcomeScreen()): user.emailVerified?Get.offAll(()=>const DashBoard()):Get.offAll(()=>const MailVerification());
  //user == null? Get.offAll(()=> const WelcomeScreen()):Get.offAll(()=>const DashBoard());
}


Future<void> phoneAuthentication(String phoneNo) async{
await  _auth.verifyPhoneNumber(
      phoneNumber: phoneNo,
      verificationCompleted: (credential) async{
        await _auth.signInWithCredential(credential);
      },

      codeSent: (verificationId,resendToken){
        this.verificationId.value=verificationId;
      },
  codeAutoRetrievalTimeout: (verificationId){
        this.verificationId.value=verificationId;
  },
  verificationFailed: (e){
        if(e.code=='invalid-phone-number'){
          Get.snackbar('Error', "The Provided phone number is not valid");
        }
        else{
          Get.snackbar('Error', "something went wrong");
        }
  },);
}



Future<bool> verifyOTP(String otp) async{

 var credentials= await _auth.signInWithCredential(PhoneAuthProvider.credential(verificationId: verificationId.value, smsCode: otp));
  return credentials.user!=null?true:false;

}
Future<void> createUserWithEmailAndPassword(String email, String password) async{

  try{
    await _auth.createUserWithEmailAndPassword(email: email, password: password);

    firebaseUser.value!= null ? Get.offAll(()=> const DashBoard()):Get.to(()=> const WelcomeScreen());
  } on FirebaseAuthException catch(e){
    final ex=signUpWithEmailAndPasswordFailure.code(e.code);
    print('FIREBASE AUTH EXCEPTION -${ex.message}');
    throw ex;
  }catch(_){
    const ex=signUpWithEmailAndPasswordFailure();
    print('Exception -${ex.message}');
    throw ex;
  }
}
Future<void> loginWithEmailAndPassword(String email,String password)async{
  try{
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }on FirebaseAuthException catch(e){

  }catch(_){}

}

//[Email Verification]

  Future<void> sendEmailVerification()async {
    try {
    await  _auth.currentUser?.sendEmailVerification();
    }on FirebaseAuthException catch(e){
      final ex=TExceptions.fromCode(e.code);
      throw ex.message;
    }catch(_){
      const ex=TExceptions();
      throw ex.message;
    }
  }
Future<void> logout() async => await _auth.signOut();
}