import 'package:flutter/material.dart';

class pageView extends StatefulWidget {
  const pageView({super.key});

  @override
  State<pageView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<pageView> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('ini pageView'),
     ),
     body: Stack(
       children: [
         PageView.builder(
          controller: pageController, //cara yg lebih effisien dan cepat 
          itemCount: 5,
          itemBuilder: (context, index) => Center(
            child: Text(
              'page ${index + 1}',
              style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.bold
              ),
            ),
         
          ),
         // children: [
          //   Center(
          //     child: Text("Page 1",
          //     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          //   ),
          //   Center(
          //     child: Text("Page 2",
          //     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          //   ),
          //   Center(
          //     child: Text("Page 3",
          //     style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          //   ),
         
          // ],
         ),
         Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 60,
            width: double.infinity,
            color: Colors.teal.shade100,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ElevatedButton(onPressed: (){
                  if((pageController.page ?? 0) <= 1){
                    pageController.nextPage(
                      duration: const Duration(
                        milliseconds: 300
                      ), curve: Curves.bounceIn);

                  }
                }, child: const Text(
                  'prev'
                ),
                ),
                ElevatedButton(onPressed: (){
                  pageController.animateToPage(0, duration: Duration(
                    milliseconds: 300
                  ), curve: Curves.bounceIn);
                }, child: const Text(
                  'home'
                ),
                ),
                ElevatedButton(onPressed: (){}, child: const Text(
                  'next'
                ),
                ),
                ],
              ),
            ),
          ),
         )
       ],
     ),
    );
    
  }
}