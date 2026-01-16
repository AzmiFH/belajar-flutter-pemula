import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('singlescroll dan pageview'),
      ),
      //SingleChildScrollView( //membungkus column dengan singlescroll agar bisa scroll item
      // scrollDirection: Axis.horizontal, //untuk scroll ke samping dengan child row
      body:  ListView(
        children: createContainer(),
      ),
    );
  }
  List<Widget> createContainer()  =>
  List.generate(10, (index) => Builder(
    builder: (context) {
      return UnconstrainedBox(
        child: Container(
          margin: const EdgeInsets.all(20),
          width: 100, height: 100,
          color: Colors.red,
          child: Center(
            child: Text(index.toString(),style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30
            ),),
          ),
        ),
      );
    }
  ));
}
