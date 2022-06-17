import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_version/Widget/Reusable%20Widget/useable.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 50.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "سوا إكسبرس",
                          style: TextStyle(
                              fontFamily: 'Cairo-VariableFont_wght',
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(width: 40.0),
                      IconButton(
                        onPressed: () {ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.black12,content: Text('Do you want Logout?'),action: SnackBarAction(label: 'Ok', onPressed: (){}),));},
                        icon: Icon(Icons.logout),
                      )
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      //  blurRadius: 7.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Text(
                  'الصفحة الشخصية',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Cairo-VariableFont_wght',
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20.0),
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                      //  blurRadius: 7.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(69.0),
                    child: Image.asset(
                      'assets/bakugo.jpg',
                      fit: BoxFit.fill,
                    )),
              ),
              Text(
                'علي عاصف',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.9,
                    fontFamily: 'Cairo-VariableFont_wght',
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                height: 12.0,
              ),
              Row(
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
              ),
              Divider(
                color: HexColor("#ffcd00"),
                thickness: 2,
              ),

              //Padding(padding: EdgeInsets.all(20.0)),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: HexColor("#f1f1f1f1"),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        //blurRadius: 5,
                        //  blurRadius: 7.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    'تعديل كلمة المرور',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Cairo-VariableFont_wght',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: HexColor("#ffcd00"),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        //blurRadius: 5,
                        //  blurRadius: 7.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Text(
                    'تعديل المعلومات الشخصية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Cairo-VariableFont_wght',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
