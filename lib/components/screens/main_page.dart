import 'package:flutter/material.dart';
import '../ui/main_text.dart';
import '../ui/select_menu.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MainText(),
        SelectMenu(),
      ],
    );
  }
}
