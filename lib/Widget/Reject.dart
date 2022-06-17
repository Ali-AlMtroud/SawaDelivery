import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_version/Widget/Reusable Widget/Buttons.dart';
class Rejected extends StatefulWidget {
  const Rejected({Key? key}) : super(key: key);

  @override
  State<Rejected> createState() => _RejectedState();
}

class _RejectedState extends State<Rejected> {
  var onpress=0;
  var _selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          Column(
            children: [

              Container(child: Lottie.asset('assets/5081-empty-box.json',width: 250,height: 250,repeat: true)),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  'لا توجد طلبات مرفوضة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Cairo-VariableFont_wght',
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              InkWell(onTap:  (){},
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
                        offset: Offset(2,2),
                      ),
                    ],
                  ),
                  child: Text(
                    'عرض جميع طلبات هذا الشهر',
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




    );
  }
}
