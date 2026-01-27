import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  final PageController controller = PageController();
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.red,
              child: const Center(child: Text('page 1')),
            ),
            Container(
              color: Colors.blue,
              child: const Center(child: Text('page 2')),
            ),
            Container(
              color: Colors.yellow,
              child: const Center(child: Text('page 3')),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              child: const Text('next', style: TextStyle(fontSize: 18)),
            ),

            Center(
              child: SmoothPageIndicator(controller: controller, count: 3),
            ),

            TextButton(
              onPressed: () => controller.jumpToPage(2),
              child: const Text('skip', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}
