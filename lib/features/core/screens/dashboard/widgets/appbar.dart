
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_login_app/repositiry/authentication_repositiary/authenticaion_repositiary.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';
import '../../profile/profile_screen.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashboardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu,color: Colors.black,),
      title: Text(tAppName,style: Theme.of(context).textTheme.headline4,),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20,top: 7),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
          child: IconButton(onPressed: ()=>Get.to(()=> const ProfileScreen())
          //{
            //AuthenticationRepository.instance.logout();
          //}
          ,icon: const Image(image: AssetImage(tUserProfileImage),),),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
