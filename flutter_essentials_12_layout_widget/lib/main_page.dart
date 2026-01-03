import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Belajar Stack")),
      body: Center(
        child: Container(
          color: Colors.yellow, // Ini batas area Stack
          width: 300,
          height: 300,
          
          child: Stack(
            // Coba ganti-ganti alignment ini:
            alignment: Alignment.center, // Semua kotak kumpul di tengah
            
            children: [
              // 1. KOTAK MERAH (Paling Belakang)
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),

              // 2. KOTAK HIJAU (Di Tengah)
              Container(
                width: 150,
                height: 150,
                color: Colors.green,
              ),

              // 3. KOTAK BIRU (Paling Depan)
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              
              // 4. TEKS (Paling Depan Lagi)
              const Text(
                "Saya Paling Depan!",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}