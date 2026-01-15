import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
  title: Text("icon widget dan textfiled"),
),
body: Column(
  children: [
    TextField(

    ),
    TextField(
      //untuk password
      obscureText: true,
      //mengcustom hide char
      obscuringCharacter: '#',
    ),
  ],

),
//[ini icon widget]
// Center(

//   // child: Icon(
//   // MdiIcons.headset,
//   // size: 80,
//   // color: Colors.blue,
//   // shadows: const [
//   //   Shadow( 
//   //     offset: Offset(3, 3),
//   //     blurRadius: 8,
//   //     color: Colors.black,

//   //   ), 

//   // ],),
// ),

    );
  }
}