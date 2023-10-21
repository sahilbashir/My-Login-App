



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_login_app/features/authentication/screens/forgot_password/forgot_password_options/forget_password_model_bottom_sheet.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../core/screens/dashboard/dashboard.dart';

//Form LoginForm() {

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()
              ),
            ),

            SizedBox(height: tFormHeight - 20,),
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.fingerprint),
                  labelText: tPassword,
                  hintText: tPassword,
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: null,
                    icon: Icon(Icons.remove_red_eye_sharp),
                  )
              ),
            ),

            const SizedBox(height: tFormHeight - 20,),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(onPressed: () {
                 ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                    child: Text(tForgetPassword)
                )
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(()=>const DashBoard());
                  }, child: Text(tLogin.toUpperCase())
              ),
            ),
          ],
        ),
      ),
    );
  }


}

