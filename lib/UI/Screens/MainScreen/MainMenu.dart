import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_version/UI/Screens/History/HistoryLog.dart';
import 'package:flutter_version/UI/Screens/Profile/Profile.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  MainMenuState createState() => MainMenuState();
}

class MainMenuState extends State<MainMenu> {
  late int _selectedindex = 0;
  List<Widget> _widgetOption = <Widget>[
    Text('تاريخ الطلبات'),
    Text('الصفحة الرئيسية'),
    Text('الصفحة الشخصية'),
  ];
  var _currentIndex = 1;

  void _Select(int index) {
    setState() {
      _selectedindex = index;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(
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
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.only(top: 300),
                //   child: Text('تطبيق توصيل',
                //     style: TextStyle(fontFamily: 'Cairo-VariableFont_wght'),),
                // )

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
                    'الصفحة الرئيسية',
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

                //Padding(padding: EdgeInsets.all(20.0)),
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
                    'الطلبات الحالية',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Cairo-VariableFont_wght',
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                // Padding(padding: EdgeInsets.all(20.0)),
                Lottie.asset('assets/scan.json',
                    width: 150, height: 150, repeat: true)
              ],
            ),
          ),
        ),
      )

    );
  }
}
