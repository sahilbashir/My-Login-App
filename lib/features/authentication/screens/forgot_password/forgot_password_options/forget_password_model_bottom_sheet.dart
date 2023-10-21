import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_login_app/features/authentication/screens/forgot_password/forgot_password_mail/forget_password_mail.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forgot_password_phone/forget_password_phone.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{

  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) =>
          Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(tForgetPasswordTitle,style: Theme.of(context).textTheme.headline2,),
                Text(tForgetPasswordSubTitle,style: Theme.of(context).textTheme.bodyText2,),
                const SizedBox(height: 30.0,),
                ForgetPasswordBtnWidget(
                  btnIcon: Icons.mail_outline_rounded,
                  title: tEmail,
                  subTitle: tResetViaEMail,
                  onTap: (){
                    Navigator.pop(context);
                    Get.to(()=>ForgetPasswordMailScreen());
                    },

                ),

                const SizedBox(height: 20.0,),
                ForgetPasswordBtnWidget(
                  btnIcon: Icons.mobile_friendly_rounded,
                  title: tPhoneNo,
                  subTitle: tResetViaPhone,
                  onTap: (){
                    //added here
                    Navigator.pop(context);
                    Get.to(()=>ForgetPasswordPhoneScreen());
                  },

                ),
              ],
            ),
          ),
    );
  }
}