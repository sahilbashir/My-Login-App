import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_login_app/constants/colors.dart';
import 'package:my_login_app/constants/image_strings.dart';
import 'package:my_login_app/constants/sizes.dart';
import 'package:my_login_app/constants/text_strings.dart';
import 'package:my_login_app/features/core/screens/profile/update_profile_screen.dart';
import 'package:my_login_app/features/core/screens/profile/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    var isDark=MediaQuery.of(context).platformBrightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){},icon: const Icon(LineAwesomeIcons.angle_left),),
        title: Text(tProfile,style: Theme.of(context).textTheme.headline4,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark?LineAwesomeIcons.sun:LineAwesomeIcons.moon)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),child: const Image(image:AssetImage(tUserProfileImage)),
                    ),
                  ),

                  //2nd child
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor,
                      ),
                      child: const Icon(LineAwesomeIcons.alternate_pencil,size:20,color: Colors.black,),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 10,),
              Text(tProfileHeading,style: Theme.of(context).textTheme.headline4,),
              Text(tProfileSubHeading,style: Theme.of(context).textTheme.bodyText2,),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: ()=> Get.to(()=>const UpdateProfileScreen()),
                    child: const Text(tEditProfile,style: TextStyle(color: tDarkColor),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: tPrimaryColor,side: BorderSide.none,shape: StadiumBorder(),
                ),
                ),
              ),
              const SizedBox(height: 30,),
              const Divider(),
              const SizedBox(height: 10,),


              //MENU

              ProfileMenuWidget(title: "Settings",icon: LineAwesomeIcons.cog,onPress: (){}),
              ProfileMenuWidget(title: "Billing Details",icon: LineAwesomeIcons.wallet,onPress: (){}),
              ProfileMenuWidget(title: "User Management",icon: LineAwesomeIcons.user_check,onPress: (){}),
              const Divider(color: Colors.grey),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: "Information",icon: LineAwesomeIcons.info,onPress: (){}),
              ProfileMenuWidget(title: "Logout",icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false
                  ,onPress: (){}),
            ],
          ),
        ),
      ),
    );
  }
}

