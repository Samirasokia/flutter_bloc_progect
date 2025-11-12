import 'package:flutter/material.dart';
import 'package:introbloc/screen/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset('assets/bg 1.png', fit: BoxFit.cover).image,
          ),
        ),

        child: Column(
          spacing: 15,
          children: [
            SizedBox(
              width: 327,
              height: 174,

              child: Image.asset('assets/chef.png', width: 180),
            ),
            Text(
              "Please choose your language ",
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(179, 0, 0, 0),
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.only(top: 120),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                spacing: 15,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 48),
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('English'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(140, 48),
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      foregroundColor: const Color.fromARGB(255, 255, 255, 255),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('Arabic'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
