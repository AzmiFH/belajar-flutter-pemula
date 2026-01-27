import 'package:flutter/material.dart';

class Animal {
  final String name;
  final String phonetic; // Cara baca
  final Color color;
  final IconData iconData; // Nanti ganti String imagePath jika sudah ada gambar
  final String? imagePath;
  final String funFact;
  final String description;
  final String weight;
  final String height;
  final String lifespan;
  final String diet;

  Animal({
    required this.name,
    required this.phonetic,
    required this.color,
    required this.iconData,
    this.imagePath,
    required this.funFact,
    required this.description,
    required this.weight,
    required this.height,
    required this.lifespan,
    required this.diet,
  });
}

final List<Animal> animalList = [
  Animal(
    name: "Singa",
    phonetic: "['si-nga]",
    color: const Color(0xFFFFE082), // Kuning
    iconData: Icons.pets,
    funFact: "Singa adalah satu-satunya kucing besar yang hidup berkelompok.",
    description:
        "Dijuluki sebagai 'Raja Hutan', singa hidup di padang rumput Afrika yang luas. Singa jantan memiliki rambut tebal (surai) di lehernya agar terlihat gagah.",
    weight: "190 kg",
    height: "1.2 m",
    lifespan: "10-14 Tahun",
    diet: "Daging",
  ),
  Animal(
    name: "Beruang",
    phonetic: "['be-ru-ang]",
    color: const Color(0xFFE1BEE7), // Ungu
    iconData: Icons.ac_unit,
    funFact: "Kulit beruang kutub sebenarnya hitam, bukan putih lho!",
    description:
        "Beruang kutub tinggal di daerah es yang sangat dingin di kutub utara. Mereka adalah perenang yang sangat handal.",
    weight: "450 kg",
    height: "2.4 m",
    lifespan: "25-30 Tahun",
    diet: "Daging",
  ),
  Animal(
    name: "Gajah",
    phonetic: "['ga-jah]",
    color: const Color(0xFF81D4FA), // Biru
    iconData: Icons.water,
    imagePath: 'assets/images/icongajah.png',
    funFact: "Gajah bisa mengenali dirinya sendiri saat bercermin.",
    description:
        "Gajah adalah hewan darat terbesar di Bumi! Belalai panjangnya sangat serbaguna, bisa dipakai seperti tangan untuk mengambil makanan.",
    weight: "6.000 kg",
    height: "3.2 m",
    lifespan: "60-70 Tahun",
    diet: "Tumbuhan",
  ),
  Animal(
    name: "Gurita",
    phonetic: "['gu-ri-ta]",
    color: const Color(0xFFB39DDB), // Ungu Tua
    iconData: Icons.bubble_chart,
    funFact: "Gurita punya 3 jantung dan darahnya berwarna biru.",
    description:
        "Gurita adalah hewan laut cerdas dengan delapan lengan. Karena tidak punya tulang, mereka bisa menyelinap ke celah sempit.",
    weight: "50 kg",
    height: "4.3 m",
    lifespan: "3-5 Tahun",
    diet: "Ikan",
  ),
];
