import 'package:flutter/material.dart';
import 'package:test_pro/HomePage.dart';
import 'package:test_pro/login/login_screen.dart';

class About_us extends StatelessWidget {
  const About_us({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sign Language Recognition',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        actions: [
          TextButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (_) => LoginPage()));
              // قم بإضافة وظيفة تسجيل الخروج هنا
            },
            child: Text(
              "Back to model",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Welcome to our 'Sign Language to Text Recognition' project!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              "This project uses cutting-edge technology to convert images of hand gestures from the American Finger Spelling alphabet into readable text. It is designed to provide an easy and efficient way for individuals to translate sign language into text, promoting better communication for the hearing impaired.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            _sectionTitle("Our Mission"),
            Text(
              "Our mission is to create a tool that facilitates communication between individuals who use sign language and those who don't. This system will help users easily understand and translate sign language gestures, making conversations smoother and more inclusive.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            _sectionTitle("Why This Project?"),
            Text(
              "The ability to understand sign language is a crucial skill for inclusivity, but it’s often limited by accessibility and tools available for real-time translation. Our project aims to provide a solution that is both simple to use and effective in converting sign language gestures to text, making it accessible for everyone, anywhere, at any time.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            _sectionTitle("How It Works"),
            Text(
              "The project uses image recognition techniques powered by machine learning. When a user uploads or drags and drops an image of sign language gestures, our system processes the image, identifies the hand shapes, and converts them into corresponding text.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            _sectionTitle("Get Involved"),
            Text(
              "If you’re passionate about accessibility and sign language recognition, we invite you to contribute to this project. Whether you’re a developer, designer, or someone with a strong interest in improving communication tools for the hearing impaired, your involvement can make a real difference.",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.teal,
      ),
    );
  }
}
