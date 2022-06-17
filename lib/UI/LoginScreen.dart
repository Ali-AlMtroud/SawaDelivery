import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_version/main.dart';
import 'package:flutter_version/models/api_response.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_version/service/user_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as json;

import '../models/user.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool visibilly = true;
  bool isSwithed = false;
  bool loading = false;
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  void _loginUser() async {
    ApiResponse response = await login(_username.text, _password.text);
    if (response.error == null) {
      _saveAndRedirectToHome(response.data as User);
    } else {
      setState(() {
        loading = false;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('${response.error}')));
    }
  }
  void _saveAndRedirectToHome(User user) async {
    if(isSwithed){
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString('token', user.token ?? '');
    await pref.setInt('customer_id', user.customer_id?? 0);}

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Home()), (route) => false);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/Rectangle.png"),
          fit: BoxFit.fill,
          opacity: 0.30,
        )
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 100),
                child: Center(
                  child: Text(
                    "سوا إكسبرس",
                    style: TextStyle(
                        fontFamily: 'Cairo-VariableFont_wght',
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 12,
                          offset: Offset(5, 5))
                    ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: TextFormField(
                        controller: _username,
                        keyboardType: TextInputType.emailAddress,
                        cursorColor: HexColor("#ffcd00"),
                        decoration: InputDecoration(
                          label: Text('البريد الإلكتروني'),
                          floatingLabelStyle: TextStyle(color: HexColor("#ffcd00")),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: HexColor("#f1f1f1f1"),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: HexColor("#ffcd00"),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: TextFormField(

                          controller: _password,
                          obscureText: visibilly,
                          cursorColor: HexColor("#ffcd00"),
                          decoration: InputDecoration(
                              suffix: IconButton(
                                icon: Icon(
                                  visibilly
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: HexColor("#ffcd00"),
                                ),
                                onPressed: ()
                                {
                                  setState(()
                                  {
                                    visibilly = !visibilly;
                                  }
                                  );
                                },
                              ),
                              label: Text('كلمة المرور'),
                              floatingLabelStyle: TextStyle(color: HexColor('#ffcd00')),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: HexColor("#ffcd00"),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: HexColor("#f1f1f1f1"),
                                ),
                              )
                          )
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Switch(
                            activeColor: HexColor("#ffcd00"),
                            value: isSwithed,
                            onChanged: (k)
                            {
                              setState(()
                              {
                                isSwithed = !isSwithed;
                              }
                              );
                            }
                            ),
                        Text(
                          'تذكرني',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    loading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : MaterialButton(
                            onPressed:_loginUser,
                            child: Text('تسجيل الدخول'),
                            height: 40,
                            color: HexColor("#f1f1f1f1"),
                            minWidth: 200,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: HexColor("#f1f1f1f1"),
                                )
                            )
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Text(
                  'تطبيق توصيل',
                  style: TextStyle(fontFamily: 'Cairo-VariableFont_wght'),
                ),
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
