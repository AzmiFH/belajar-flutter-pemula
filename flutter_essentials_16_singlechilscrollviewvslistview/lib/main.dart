import 'package:flutter/material.dart';
import 'main_Page.dart'; // <--- PENTING: Panggil file temannya

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(), // <--- Panggil Class dari file sebelah
    );
  }
}