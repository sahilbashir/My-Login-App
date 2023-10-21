import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:my_login_app/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:my_login_app/firebase_options.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/authenticaion_repositiary.dart';
import 'package:my_login_app/utils/theme/theme.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value)=>Get.put(AuthenticationRepository()));
  runApp(const App());}
class App extends StatelessWidget{

  const App({Key?key}):super(key:key);
  @override

  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme:TAppTheme.lightTheme,
      darkTheme:TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}


