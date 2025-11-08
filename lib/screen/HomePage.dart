import 'package:flutter/material.dart';
import 'package:introbloc/screen/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/bg 1.png', fit: BoxFit.cover),
          ),

          Center(
            child: Column(
              children: [
                SizedBox(
                  width: 327,
                  height: 174,

                  child: Image.asset('assets/chef.png', width: 180),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(top: 45),
                  child: Text(
                    "Please choose your language ",
                    style: TextStyle(
                      fontSize: 18,
                      color: const Color.fromARGB(179, 0, 0, 0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(top: 120),
                  child: Row(
                    spacing: 10,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(140, 48),
                          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                          foregroundColor: const Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          ),

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text('English'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(140, 48),
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          //    padding: const EdgeInsets.symmetric(vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: const Text('عربي'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Container(
          //   child:  Image.asset('assets/bg 1.png'),
          // )
          // ,Container(
          //   child:  Image.asset('assets/chef.png'),
          // )
        ],
      ),
    );
  }
}
