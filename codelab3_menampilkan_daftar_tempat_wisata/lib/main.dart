import 'package:codelab2_perbaikan_tampilan_aplikasi/mainScreen.dart';
import 'package:flutter/material.dart';
import 'package:codelab2_perbaikan_tampilan_aplikasi/DetailScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const Mainscreen(),
    );
  }
}
