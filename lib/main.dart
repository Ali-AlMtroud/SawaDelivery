import 'dart:async';
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_version/UI/Screens/MainScreen/MainMenu.dart';
import 'package:flutter_version/UI/loading.dart';
import 'package:flutter_version/cubit/cubit.dart';
import 'package:flutter_version/cubit/state.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_version/UI/Screens/History/HistoryLog.dart';
import 'package:flutter_version/UI/LoginScreen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Loading(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (BuildContext context) => AppCubit(),
          child: BlocConsumer<AppCubit, AppState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                body: AppCubit.get(context)
                    .item[AppCubit.get(context).currentIndex],
                bottomNavigationBar: SalomonBottomBar(
                  currentIndex: AppCubit.get(context).currentIndex,
                  onTap: (i) => AppCubit.get(context).changeindex(i),
                  items: [
                    /// time
                    SalomonBottomBarItem(
                      icon: Icon(Icons.access_time_outlined),
                      title: Text(
                        "تاريخ الطلبات",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Cairo-VariableFont_wght'),
                      ),
                      selectedColor: HexColor("#ffcd00"),
                    ),

                    /// Home
                    SalomonBottomBarItem(
                      icon: Icon(Icons.home_rounded),
                      title: Text(
                        "الصفحة الرئيسية",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Cairo-VariableFont_wght'),
                      ),
                      selectedColor: HexColor("#ffcd00"),
                    ),

                    /// Profile
                    SalomonBottomBarItem(
                      icon: Icon(Icons.person),
                      title: Text(
                        "الصفحة الشخصية",
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Cairo-VariableFont_wght'),
                      ),
                      selectedColor: HexColor("#ffcd00"),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
