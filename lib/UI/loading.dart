import 'package:flutter_version/constant.dart';
import 'package:flutter_version/models/api_response.dart';

import 'package:flutter_version/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_version/main.dart';

import '../constant.dart';
import '../service/user_service.dart';
import 'LoginScreen.dart';



class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void _loadUserInfo() async {
    String token = await getToken();
    if(token == ''){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Login()), (route) => false);
    }
    else {

        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>Home()), (route) => false);
      }


  }

  @override
  void initState() {
    _loadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Center(
        child: CircularProgressIndicator()
      ),
    );
  }
}