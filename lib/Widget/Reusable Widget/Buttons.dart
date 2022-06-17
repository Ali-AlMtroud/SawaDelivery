import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

Widget defaultButton({
  required double height ,
  required double minWidth,
  required Color color,
  required String text,
  required Function function,
}) =>MaterialButton(
    child: Text(text),
    height: height,
    color: color,
    minWidth: minWidth,
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: HexColor("#f1f1f1f1"),
        )
    ), onPressed: () {  },
);
//defaultButton(height: 10.0, minWidth: 20.0, color: HexColor("#ffcd00"), text: "ali"),//
Widget lottie(
    {
      required String Path,
      required double width,
      required double height,
      required bool repeat,
})
=>  Container(child: Lottie.asset(Path,width: 250,height: 250,repeat: true));
Widget bar()=>Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          child: Icon(
            Icons.schedule,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        Text(
          'الحالية',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Cairo-VariableFont_wght'),
        ),
        Text(
          '0',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Cairo-VariableFont_wght'),
        ),
      ], //Icons.done_all ,color: Colors.white,Icons.close,color: Colors.white,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          child: Icon(
            Icons.done_all,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: HexColor("#ffcd00"),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        Text(
          'المنفذة',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Cairo-VariableFont_wght'),
        ),
        Text(
          '0',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Cairo-VariableFont_wght'),
        ),
      ], //Icons.done_all ,color: Colors.white,Icons.close,color: Colors.white,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          child: Icon(
            Icons.close,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        Text(
          'المرفوضة',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Cairo-VariableFont_wght'),
        ),
        Text(
          '0',
          style: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Cairo-VariableFont_wght'),
        ),
      ], //Icons.done_all ,color: Colors.white,Icons.close,color: Colors.white,
    ),
  ],
);