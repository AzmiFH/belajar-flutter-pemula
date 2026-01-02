import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Judul Aplikasi"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text("Halo, ini File Terpisah!",
            //untuk membatasi line text
            maxLines: 2,
            //overflow pada Text widget berguna untuk
            // mengatur nasib teks yang kepanjangan saat tempatnya tidak muat.
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              backgroundColor: Colors.red,
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold, //untuk ketebalan font
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                  blurRadius: 10, //untuk ktebalan blur
                  color: Colors.black,
                  offset: Offset(5, 5), //lokasi bayangan 
                ),
          
              ],
              letterSpacing: 5, //untuk memberi jarak antar huruf
              wordSpacing: 5, //untuk memberi jarak antar kata
              decoration: TextDecoration.lineThrough, // coretan
              decorationThickness: 5, //decorationThickness berguna untuk mengatur Ketebalan Garis pada hiasan teks (seperti Garis Bawah, Coretan, atau Garis Atas).
              decorationColor: Colors.black,
              decorationStyle: TextDecorationStyle.wavy // style dari garis nya 
            ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("hallo miaw",style: GoogleFonts.poppins(fontStyle: FontStyle.italic)),
        ],
      ),
    );
  }
}