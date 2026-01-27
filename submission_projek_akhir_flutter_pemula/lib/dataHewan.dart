import 'package:flutter/material.dart';

class Animal {
  final String name;
  final String phonetic;
  final Color color;
  final IconData iconData;
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
    phonetic: "Panthera leo",
    color: const Color(0xFFFFE082),
    iconData: Icons.pets,
    imagePath: 'assets/images/iconsinga.png',
    funFact: "Singa adalah satu-satunya kucing besar yang hidup berkelompok.",
    description:
        "Dijuluki sebagai 'Raja Hutan', singa hidup di padang rumput Afrika yang luas. Singa jantan memiliki rambut tebal (surai) di lehernya agar terlihat gagah.",
    weight: "190 kg",
    height: "1.2 m",
    lifespan: "10-14 Tahun",
    diet: "Daging",
  ),
  Animal(
    name: "Beruang Coklat",
    phonetic: "Ursus arctos",
    color: const Color(0xFFD7CCC8),
    iconData: Icons.forest,
    imagePath: 'assets/images/iconberuang.png',
    funFact: "Beruang coklat memiliki punuk otot di bahu untuk menggali tanah.",
    description:
        "Beruang coklat adalah hewan kuat yang hidup di hutan dan pegunungan. Mereka suka makan ikan, buah beri, dan madu.",
    weight: "600 kg",
    height: "2.8 m",
    lifespan: "20-30 Tahun",
    diet: "Omnivora",
  ),
  Animal(
    name: "Gajah",
    phonetic: "Elephantidae",
    color: const Color(0xFF81D4FA),
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
    name: "Burung Hantu",
    phonetic: "Strigiformes",
    color: const Color(0xFF90A4AE),
    iconData: Icons.nightlight_round,
    imagePath: 'assets/images/iconburunghantu.png',
    funFact: "Burung hantu bisa memutar kepalanya hingga 270 derajat.",
    description:
        "Burung hantu adalah burung pemangsa yang aktif pada malam hari (nokturnal). Mereka memiliki mata besar yang menghadap ke depan.",
    weight: "1.5 kg",
    height: "50 cm",
    lifespan: "10-20 Tahun",
    diet: "Karnivora",
  ),
];
