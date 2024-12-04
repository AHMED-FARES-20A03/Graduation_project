import 'package:flutter/material.dart';

class MyNavbar extends StatelessWidget {
  final VoidCallback onToggleTheme;

  const MyNavbar({Key? key, required this.onToggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'assets/logo.png',
            height: 40,
          ),
          SizedBox(width: 10),
          Text('Sign Language'),
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.nightlight_round),
          onPressed: onToggleTheme,
        ),
      ],
    );
  }
}
