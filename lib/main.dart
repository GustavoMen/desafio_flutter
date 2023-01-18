import 'package:flutter/material.dart';
import './components/ui/app_bar_custom.dart';
import 'components/screens/main_page.dart';

void main() => runApp(DesafioFlutter());

class DesafioFlutter extends StatelessWidget {
  const DesafioFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarCustom(),
      body: MainPage(),
    );
  }
}
