  import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fruithub/core/utils/app_text_styles.dart';

AppBar builderAppBar( context ,  {String ? title,VoidCallback ? ontap}) {
    return AppBar(
      leading: GestureDetector(
        onTap: ontap,
        child: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 24,)),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(title!,style: TextStyles.bold19,),
      
    
   
    );
  }