import 'package:flutter/material.dart';
class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('halaman kedua'),
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: const Text('kembali ke halaman utama'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){},
                child: const Text('Button 2'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('Main Menu'),
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}