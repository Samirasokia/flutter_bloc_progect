// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:introbloc/theme_swetch_bloc.dart';
// import 'package:introbloc/theme_swetch_event.dart';

// class theme extends StatelessWidget {
//   const theme({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             actions: [
//                 BlocBuilder <ThemeSwetchBloc,ThemeData>(builder: (context, state) {
//                   return CupertinoSwitch(value: state==ThemeData.dark(), onChanged: (bool val){
//                       context.read<ThemeSwetchBloc>().add(SwetchTheme());
//                   });
//                 },
                 
//                 )
//             ],
//         ),
//         body:
        
//          Center(
//             child: Text("data"),
//         ),
//     );
//   }
// }