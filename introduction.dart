import 'package:flutter/material.dart';
import 'package:test_pro/HomePage.dart';
import 'package:test_pro/login/login_screen.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            const Text(
              "Introduction",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            Container(
              width: 100,
              height: 1.5,
              color: Colors.teal,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "In today's world, technology plays a vital role in our daily lives, offering innovative solutions to improve communication and interaction among people from diverse backgrounds. Among these solutions, the Sign Language to Text Conversion project aims to empower individuals with hearing impairments to communicate more effectively. This project utilizes artificial intelligence techniques to convert images of hand signs (representing letters and words in sign language) into written text.",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
              },
              child: const Text("Go To Model"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                elevation: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
