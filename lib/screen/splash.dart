import 'package:flutter/material.dart';
import 'package:introbloc/screen/HomePage.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      if (mounted) {
        
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 237, 91, 18),
      body: Center(child: Image.asset('assets/Group 3359.png')),
    );
  }
}