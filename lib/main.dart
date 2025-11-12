import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbloc/config/bloc_observer_config.dart';
import 'package:introbloc/screen/splash.dart';
import 'package:introbloc/theme_swetch_bloc.dart';
import 'package:introbloc/theme_swetch_event.dart';

void main(List<String> args) {
   Bloc.observer = MyBlocObserver();
  runApp(BlocProvider (create: (contaxt) => ThemeSwetchBloc()..add(SetintialTheme()),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  
     return  MaterialApp(
        debugShowCheckedModeBanner: false,
   
      home:SplashScreen(),
      );
    }
      
    
  }


