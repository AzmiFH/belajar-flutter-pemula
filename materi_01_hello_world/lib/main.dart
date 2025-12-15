import 'package:flutter/material.dart';
void main() {
 runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: Scaffold(
       appBar: AppBar(
         title: Text('Hello, world!'),
       ),
       body: Center(
         child: Heading(text: "Hello World"),
       ),
     ),
   );
 }
}

class Heading extends StatelessWidget {
 
  final String text;
 
  const Heading({Key? key, required this.text}) : super(key: key);
 
  @override
  Widget build(BuildContext context){
    return Text(
      text,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}



