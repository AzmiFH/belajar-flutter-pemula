import 'package:flutter/foundation.dart';
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
  title: Text("icon widget dan textfiled"),
),
body: Column(
  children: [
    // SizedBox(
    //   height: 20,
    // ),
    TextField(
      // textAlign: TextAlign.center, (untuk di tengah text yg di ketik)
      decoration: InputDecoration(
        hintText: "masukan username anda",
        // helperText: 'gunakan email aktif',
        // hintStyle: TextStyle(
        //   color: Colors.red,
          

        // ),
        hintMaxLines: 2, //ini untuk max baris hint 
        labelText: 'Email', //menambah label di atas textfield
        labelStyle: TextStyle(
          color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20,
        ),
      ),
      

    ),

    // SizedBox(
    //   height: 20,
    // ),
    
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