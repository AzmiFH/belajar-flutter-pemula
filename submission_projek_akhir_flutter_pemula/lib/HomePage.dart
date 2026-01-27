import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preview Belajar Hewan',
      theme: ThemeData(useMaterial3: true),
      home: const AnimalGridPage(),
    );
  }
}

// MODEL DATA
class Animal {
  final String name;
  final Color color;
  final IconData iconData; // Pakai Icon dulu untuk Preview Web

  Animal({required this.name, required this.color, required this.iconData});
}

class AnimalGridPage extends StatelessWidget {
  const AnimalGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    // DATA DUMMY (Warna Pastel sesuai desainmu)
    final List<Animal> animals = [
      Animal(
        name: "Tiger",
        color: const Color(0xFFFFE082),
        iconData: Icons.pets,
      ),
      Animal(
        name: "Polar Bear",
        color: const Color(0xFFE1BEE7),
        iconData: Icons.ac_unit,
      ),
      Animal(
        name: "Elephant",
        color: const Color(0xFF81D4FA),
        iconData: Icons.water,
      ),
      Animal(
        name: "Monkey",
        color: const Color(0xFFA5D6A7),
        iconData: Icons.emoji_nature,
      ),
      Animal(
        name: "Owl",
        color: const Color(0xFFFFAB91),
        iconData: Icons.nightlight_round,
      ),
      Animal(
        name: "Octopus",
        color: const Color(0xFFB39DDB),
        iconData: Icons.bubble_chart,
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Popular Animals",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
          itemCount: animals.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 Kolom
            childAspectRatio: 0.8, // Agar kotak agak tinggi
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return _buildAnimalCard(animals[index]);
          },
        ),
      ),
    );
  }

  Widget _buildAnimalCard(Animal animal) {
    return Column(
      children: [
        // KOTAK WARNA (Rounded)
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: animal.color,
              borderRadius: BorderRadius.circular(24), // Sudut Tumpul
            ),
            child: Icon(
              animal.iconData,
              size: 50,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ),
        const SizedBox(height: 12),
        // TEKS NAMA
        Text(
          animal.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
