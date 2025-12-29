import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      actions: [IconButton(
        icon: const Icon(Icons.search,
        color: Colors.white,
        ),
        onPressed: (){},
        ),
        ],
      title: const Text("Main Page utama")), 
      body: const Center(
        child: Text("hallooo ini aku"),
    ),
  );
    }
}
