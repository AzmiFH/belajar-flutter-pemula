import 'package:flutter/material.dart';
// 👇 PENTING: Kita panggil file main_page.dart agar dikenali
import 'main_page.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hilangkan pita 'Debug' di pojok kanan atas
      title: 'layout widget',
      
      // Atur Tema Dasar (Warna utama aplikasi)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true, // Pakai desain gaya baru (Material 3)
      ),

      // 👇 Panggil Halaman Utama dari file sebelah
      home: const MainPage(), 
    );
  }
}