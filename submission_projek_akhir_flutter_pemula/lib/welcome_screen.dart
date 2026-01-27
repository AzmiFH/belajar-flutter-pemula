import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:submission_projek_akhir_flutter_pemula/HomePage.dart';
import 'package:submission_projek_akhir_flutter_pemula/cont_image.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController controller = PageController();
  bool isLastPage = false;

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
          onPageChanged: (index) {
            setState(() {
              isLastPage = index == 2;
            });
          },
          children: [
            buildImageContainer(
              Colors.orange.shade50,
              'Dunia Hewan',
              'Selamat datang! Ayo belajar mengenal berbagai macam hewan yang lucu dan unik.',
              'assets/images/banner1.jpg',
            ),
            buildImageContainer(
              Colors.green.shade50,
              'Suara Alam',
              'Dengarkan suara mereka dan ketahui habitat tempat tinggal mereka di alam liar.',
              'assets/images/banner2.jpg',
            ),
            buildImageContainer(
              Colors.blue.shade50,
              'Fakta Menarik',
              'Pelajari deskripsi dan keunikan setiap hewan untuk menambah pengetahuanmu.',
              'assets/images/banner3.jpg',
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        height: 80,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                controller.jumpToPage(2);
              },
              child: const Text(
                'Lewati',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),

            Center(
              child: SmoothPageIndicator(
                effect: WormEffect(
                  spacing: 15,
                  dotColor: Colors.grey.shade300,
                  activeDotColor: Colors.orange,
                  dotHeight: 10,
                  dotWidth: 10,
                ),
                onDotClicked: (index) => {
                  controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  ),
                },
                controller: controller,
                count: 3,
              ),
            ),

            isLastPage
                ? ElevatedButton(
                    onPressed: () async {
                      final prefs = await SharedPreferences.getInstance();
                      await prefs.setBool('hasSeenOnboarding', true);

                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AnimalGridPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Mulai',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                : ElevatedButton(
                    onPressed: () {
                      controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                    ),
                    child: const Icon(Icons.arrow_forward),
                  ),
          ],
        ),
      ),
    );
  }
}
