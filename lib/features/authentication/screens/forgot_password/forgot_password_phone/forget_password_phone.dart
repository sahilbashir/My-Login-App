import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_login_app/common_widgets/form/form_header_widget.dart';
import 'package:my_login_app/constants/image_strings.dart';
import 'package:my_login_app/constants/sizes.dart';
import 'package:my_login_app/constants/text_strings.dart';

import '../forgot_password_otp/otp_screen.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  SizedBox(
                    height: tDefaultSize * 4,
                  ),
                  const FormHeaderWidget(
                    image: tForgotImage,
                    title: tForgetPassword,
                    subTitle: tForgetPasswordSubTitle,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    heightBetween: 30.0,
                    textAlign: TextAlign.center,
                    imageColor: null,
                  ),
                  SizedBox(
                    height: tFormHeight,
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            label: Text(tPhoneNo),
                            hintText: tPhoneNo,
                            prefixIcon: Icon(Icons.numbers),
                          ),
                        ),

                        const SizedBox(height: 20.0,),
                        SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(onPressed: (){
                              Get.to(()=> OTPScreen());
                            }, child: Text(tNext))),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
