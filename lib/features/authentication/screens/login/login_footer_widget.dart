import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

Column LoginFooter(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      const Text("OR"),
      const SizedBox(height: tFormHeight-20,),
      SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
            icon:   Image(image: AssetImage(tGoogleImage),width: 20.0,),
            onPressed: (){}, label: Text(tSignInWithGoogle)
        ),
      ),
      const SizedBox(height: tFormHeight-20,),
      TextButton(onPressed: (){},
        child: Text.rich(TextSpan(text: tDontHaveAnAccount,
            style: Theme.of(context).textTheme.bodyText1,
            children: [
              TextSpan(text: tSignup,
                style: TextStyle(color: Colors.blue),
              )
            ]
        )),
      ),
    ],
  );
}

