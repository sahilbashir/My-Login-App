import 'package:flutter/material.dart';
import 'package:my_login_app/common_widgets/form/form_header_widget.dart';
import 'package:my_login_app/constants/colors.dart';
import 'package:my_login_app/constants/image_strings.dart';
import 'package:my_login_app/constants/sizes.dart';
import 'package:my_login_app/constants/text_strings.dart';
import 'package:my_login_app/features/authentication/screens/signup/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                FormHeaderWidget(image: tWelcomeScreenImage, title: tSignUpTitle, subTitle: tSignUpSubTitle, imageColor: null, heightBetween: null,),

                 SignUpFormWidget(),
              Column(
                children: [
                  const Text("OR"),
                  const SizedBox(height: tFormHeight-20,),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: (){},
                      icon: const Image(image: AssetImage(tGoogleImage),width: 20.0,),
                      label: Text(tSignInWithGoogle.toUpperCase()),

                    ),
                  ),
                  const SizedBox(height: tFormHeight-20,),
                  TextButton(onPressed: (){}, child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: tAlreadyHaveAnAccount,style: Theme.of(context).textTheme.bodyText1),

                        TextSpan(text: tLogin.toUpperCase()),
                      ]
                    ),
                  ),
                  ),

                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
