import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbloc/theme_swetch_event.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeSwetchBloc extends Bloc<ThemeSwetchEvent, ThemeData> {
  
  ThemeSwetchBloc() : super(ThemeData.dark()) {
    on<SetintialTheme>((event, emit) async {
      bool hasthemedark = await isdark();
      emit (
        hasthemedark ?ThemeData.dark(): ThemeData.light()
      );
    });
    

on<SwetchTheme>((event, emit) async {
      bool hasthemedark= state == ThemeData.dark();
      emit(
        hasthemedark ? ThemeData.light() : ThemeData.dark()
      );
      settheme(!hasthemedark );
    });
    


  }
}

Future<bool> isdark() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  return sharedPreferences.getBool("is_dark") ?? false;
}

Future<void> settheme(bool isdark) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setBool("is_dark", isdark);
}
