import 'package:flutter/material.dart';
import 'SecondPage.dart';
class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('halaman utama'),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const SecondPage()));
                },
                child: const Text('navigate push'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const SecondPage()));
                },
                child: const Text('navigate push replacement'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){},
                child: const Text('Button 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}