import 'package:flutter/material.dart';

var x=AlertDialog(

  content: Text('هل تريد تسجيل الخروج ؟',),
  title: Text('تسجيل الخروج'),
  actions: [
    MaterialButton(onPressed: (){},child: Text('نعم',),color: Colors.black12,),
    MaterialButton(onPressed: (){},child: Text('لا'),color: Colors.red,)
  ],
  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)));


