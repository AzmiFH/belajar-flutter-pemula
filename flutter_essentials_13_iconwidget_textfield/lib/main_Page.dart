import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}
////////////////mimimimi
class _MyWidgetState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.grey.shade300,
  title: Text("icon widget"),
),
body: const Center(
  child: Icon(Icons.home),
),
    );
  }
}