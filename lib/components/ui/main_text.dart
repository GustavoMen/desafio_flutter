import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25, top: 25),
      child: Text(
        "Find your Product",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 36,
        ),
      ),
    );
  }
}
