import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_version/UI/Screens/History/HistoryLog.dart';
import 'package:flutter_version/UI/Screens/MainScreen/MainMenu.dart';
import 'package:flutter_version/UI/Screens/Profile/Profile.dart';
import 'package:flutter_version/Widget/Current.dart';
import 'package:flutter_version/Widget/Done.dart';
import 'package:flutter_version/Widget/Reject.dart';
import 'package:flutter_version/cubit/state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppintialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 1;
  int currentItem=0;
  bool visible = false;
  bool isSwitched = false ;
  List <Widget> items=[Current(),Rejected(),Done()];
  List<Widget> item = [
    History(),
    MainMenu(),
    Profile(),

  ];
  changeindex(int index){
    currentIndex=index;
    emit(Changenavbar());
  }
  changeitem(int index){
    currentItem=index;
    emit(Changeitembar());
  }


  changeIcon(){
    visible = !visible;
  }
  changeSlider(){
    isSwitched = !isSwitched;
  }

}
