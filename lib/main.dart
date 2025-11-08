import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbloc/screen/splash.dart';
import 'package:introbloc/theme_swetch_bloc.dart';
import 'package:introbloc/theme_swetch_event.dart';

void main(List<String> args) {
  runApp(BlocProvider (create: (contaxt) => ThemeSwetchBloc()..add(SetintialTheme()),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder <ThemeSwetchBloc,ThemeData>( builder: (context, state) {
     return  MaterialApp(
        debugShowCheckedModeBanner: false,
      theme:  state,
      home:SplashScreen(),
      );
    },
      
    );
  }
}

