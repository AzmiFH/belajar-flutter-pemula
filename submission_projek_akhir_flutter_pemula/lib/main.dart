import 'package:flutter/material.dart';
import 'package:submission_projek_akhir_flutter_pemula/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const welcomeScreen(),
    );
  }
}
