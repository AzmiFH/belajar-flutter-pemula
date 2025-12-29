import 'package:flutter/material.dart';
import 'package:materiyt_01_aplikasipertama/main_page.dart';

void main() {
  runApp(const mainApp());
}

class mainApp extends StatelessWidget {
  const mainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const MainPage());
  }
}
