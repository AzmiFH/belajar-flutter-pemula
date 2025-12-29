import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Main Page utama"),
        // PERBAIKAN: Atur 'actions' setelah 'title'
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        // PERBAIKAN: Tambahkan penutup ')' untuk AppBar
      ),
      // PERBAIKAN: Indentasi body agar sejajar dengan appBar
      body: const Center(child: Text("hallooo ini aku")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      // PERBAIKAN: Tambahkan penutup ')' untuk Scaffold
    );
    // PERBAIKAN: Tambahkan penutup '}' untuk method build
  }
}
