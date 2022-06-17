import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_version/cubit/cubit.dart';
import 'package:flutter_version/cubit/state.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';





class History extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:BlocProvider(
        create: (BuildContext context)=>AppCubit(),

        child: BlocConsumer<AppCubit,AppState>(
          listener:(context, state) {},
          builder: (context,state)=>
          Container(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Center(
                      child: Container(decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/Mask Group 1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

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

                          ],
                        ),
                      ),
                    ),
                  ),


                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(horizontal: 20),
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
                      'تاريخ الطلبات',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Cairo-VariableFont_wght',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //

                  SizedBox(width: double.infinity, height: 12.0,),
                  Padding(padding: EdgeInsets.all(20.0)),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    height: 55,
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
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: AppCubit.get(context).currentItem== 0 ? HexColor("#ffcd00") : Colors
                                .white,),

                          child: TextButton(
                            child: Text(
                              'الحالية',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cairo-VariableFont_wght',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {AppCubit.get(context).changeitem(0);
                           // showDialog(context: context, builder:(ctx)=>Dialog(child: Container(width: 200,height: 200,child: Text('hi,boyyyyyy'),),));
                            },
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color:  AppCubit.get(context).currentItem== 1 ? HexColor("#ffcd00") : Colors
                                .white,),

                          child: TextButton(
                            child: Text(
                              'المرفوضة',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cairo-VariableFont_wght',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                             AppCubit.get(context).changeitem(1);
                            },
                          ),
                        ),
                        Container(
                          height: 130,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color:  AppCubit.get(context).currentItem== 2 ? HexColor("#ffcd00") : Colors
                                .white,),

                          child: TextButton(
                            child: Text(
                              'المنفذة',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Cairo-VariableFont_wght',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              AppCubit.get(context).changeitem(2);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),



            AppCubit.get(context).items[AppCubit.get(context).currentItem]


                ],

              ),
            ),
          ),
        ),
      )
    );
  }
}
