import 'package:flutter/material.dart';

// Ini adalah halaman tujuannya (Halaman Kedua)
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Kedua"),
      ),
      body: Center(
        child: SizedBox(
          
        ),
      ),
  //     body: Column(
  //       children: [],

  // // children: [
  // //   TextField(
  // //     //ini untuk password agar menjadi bintang bintang 
  // //     obscureText: true,
  // //     //mengcostum bintang tadi menjadi char
  // //     obscuringCharacter: '^',

  // //   ),
  // // ],
  //     ),
    );
  }
}
