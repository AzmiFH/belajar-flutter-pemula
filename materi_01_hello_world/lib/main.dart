import 'package:flutter/material.dart';
import 'StatelessWidget dan StatefulWidget/headingStatelessWidget.dart';
import 'StatelessWidget dan StatefulWidget/StatefulWidget.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Hello, world!')),
        body: Center(child: BiggerText(text: "Hello World")),
      ),
    );
  }
}
