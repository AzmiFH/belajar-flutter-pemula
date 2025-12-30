import 'package:flutter/material.dart';
import 'package:materiyt_01_aplikasipertama/SecondPage.dart';

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
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Icon(Icons.share),
            const Icon(Icons.thumb_up),
            const Icon(Icons.thumb_down),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up),
              tooltip: "Volume UP",
            ),
            //ini adalah button
            ElevatedButton(
              child: const Text("tekan"),
              onPressed: () {
                print("pindah halaman");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            ),
          ],
        ),
      ),
      // PERBAIKAN: Indentasi body agar sejajar dengan appBar
      //body: const Center(child: Text("hallooo ini aku")),
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
