import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Text title = const Text("Main Page");
    AppBar appBar = AppBar(title: title);
    Scaffold scaffold = Scaffold(appBar: appBar);
    return scaffold;
  }
}
