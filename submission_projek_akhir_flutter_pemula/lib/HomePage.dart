import 'package:flutter/material.dart';
import 'package:submission_projek_akhir_flutter_pemula/DetailScreen.dart';
import 'package:submission_projek_akhir_flutter_pemula/dataHewan.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dunia Hewan',
      theme: ThemeData(useMaterial3: true),
      home: const AnimalGridPage(),
    );
  }
}

class AnimalGridPage extends StatelessWidget {
  const AnimalGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text(
          "Dunia Hewan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: animalList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 Kolom
            childAspectRatio: 0.8, // Agar kotak agak tinggi
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return _buildAnimalCard(context, animalList[index]);
          },
        ),
      ),
    );
  }

  Widget _buildAnimalCard(BuildContext context, Animal animal) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailScreen(animal: animal);
            },
          ),
        );
      },
      child: Card(
        color: animal.color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            animal.imagePath != null
                ? Image.asset(
                    animal.imagePath!,
                    width: 110,
                    height: 110,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        Icon(animal.iconData, size: 60, color: Colors.white),
                  )
                : Icon(animal.iconData, size: 60, color: Colors.white),
            const SizedBox(height: 16),
            Text(
              animal.name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
