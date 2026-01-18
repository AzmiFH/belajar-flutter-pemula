import 'package:flutter/material.dart';
import 'dropDownButton.dart';
// <--- PENTING: Panggil file temannya

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: myDropdownButton(), // <--- Panggil Class dari file sebelah
    );
  }
}
