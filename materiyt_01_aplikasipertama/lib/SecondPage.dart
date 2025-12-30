import 'package:flutter/material.dart';

// Ini adalah halaman tujuannya (Halaman Kedua)
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Kedua")),
      body: Center(child: Text("Sampai di Halaman 2!")),
    );
  }
}
