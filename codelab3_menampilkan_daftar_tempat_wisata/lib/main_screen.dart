import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wisata Bandung')),
      body: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('images/farm-house.jpg'),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'farm house lembang',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 10),
                  Text('lembang'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
