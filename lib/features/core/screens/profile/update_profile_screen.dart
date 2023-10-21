import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:my_login_app/features/core/controller/profile_controller.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../authentication/models/user_model.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    final controller =Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: ()=>Get.back(),icon: const Icon(LineAwesomeIcons.angle_left),),
        title: Text(tEditProfile,style: Theme.of(context).textTheme.headline4,),
      //  actions: [
        //  IconButton(onPressed: (){}, icon: Icon(isDark?LineAwesomeIcons.sun:LineAwesomeIcons.moon)),
        //],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  const EdgeInsets.all(tDefaultSize),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context,snapshot){
              if(snapshot.connectionState==ConnectionState.done){
                if(snapshot.hasData){
                  UserModel user=snapshot.data as  UserModel;

                  //controllers

                  final email= TextEditingController(text: user.email);
                  final password=TextEditingController(text: user.password);
                  final fullName=TextEditingController(text: user.fullName);
                  final phoneNo=TextEditingController(text: user.phoneNo);

                  return Column(
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
                                  child: const Icon(LineAwesomeIcons.camera,size:20,color: Colors.black,),
                                ),
                              ),
                            ]
                        ),

                        const SizedBox(height: 50,),
                        Form(child: Column(
                          children: [
                            TextFormField(
                              controller: fullName,
                        //      initialValue: user.fullName,
                              decoration:const InputDecoration(
                                  label: Text(tFullName),prefixIcon: Icon(LineAwesomeIcons.user)),
                            ),
                            const SizedBox(height: tFormHeight-20),
                            TextFormField(
                              controller: email,
                              //initialValue: user.email,
                              decoration:const InputDecoration(
                                  label: Text(tEmail),prefixIcon: Icon(LineAwesomeIcons.envelope_1)),
                            ),
                            const SizedBox(height: tFormHeight-20),
                            TextFormField(
                              controller: phoneNo,
                              //initialValue: user.phoneNo,
                              decoration:const InputDecoration(
                                  label: Text(tPhoneNo),prefixIcon: Icon(LineAwesomeIcons.phone)),
                            ),
                            const SizedBox(height: tFormHeight-20),
                            TextFormField(
                              controller: password,
                              //initialValue: user.password,
                              decoration:const InputDecoration(

                                  label: Text(tPassword),prefixIcon: Icon(LineAwesomeIcons.fingerprint)),
                            ),
                            const SizedBox(height: tFormHeight),

                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () async {
                                  final userData=UserModel(
                                    email: email.text.trim(),
                                    password: password.text.trim(),
                                    fullName: fullName.text.trim(),
                                    phoneNo: phoneNo.text.trim(),
                                  );
                                  //user
                                  await controller.updateRecord(user);
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: tPrimaryColor,side: BorderSide.none,shape: const StadiumBorder()),
                                child: const Text(tEditProfile,style: TextStyle(color: tDarkColor),),
                              ),
                            ),
                            const SizedBox(height: tFormHeight,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(TextSpan(
                                    text: tJoined,
                                    style: TextStyle(fontSize: 12),
                                    children: [
                                      TextSpan(text: tJoinedAt,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))
                                    ]
                                ),
                                ),

                                ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent.withOpacity(0.1)
                                        ,elevation: 0,
                                        foregroundColor: Colors.red,
                                        shape: const StadiumBorder(),
                                        side: BorderSide.none
                                    ),
                                    child: const Text(tDelete)),
                              ],
                            ),
                          ],
                        ),
                        ),
                      ]
                  );
                }else if(snapshot.hasError){
                  return Center(child: Text(snapshot.error.toString()));
                }else{
                  return const Center(child: Text('Something Went Wrong'));
                }
              }else{
                return const Center(child: CircularProgressIndicator());
              }
            },

          ),
    )
      )
    );
  }
}
