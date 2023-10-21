
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';


class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget
({Key?key,
    required this.imageColor,
    required this.heightBetween,

required this.image,
    required this.title,
    required this.subTitle,
    this.textAlign,
    this.imageHeight=0.2,
  this.crossAxisAlignment=CrossAxisAlignment.start,
}):super
(
key:key);
  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final String image,title,subTitle;
  final TextAlign? textAlign;

@override
Widget build(BuildContext context) {
final size=MediaQuery.of(context).size;
return Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Image(image:AssetImage(image),color:imageColor,height: size.height*0.2,
),

Text(title,style: Theme.of(context).textTheme.headline1,),
Text(subTitle,textAlign:textAlign,style: Theme.of(context).textTheme.bodyText1,),
],
);

}

}
/*Column LoginHeader(Size size, BuildContext context) {

}*/

/*class LoginHeader extends StatelessWidget {
  const LoginHeader({Key?key,required this.size,}):super(key: key);
final Size size;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}*/


