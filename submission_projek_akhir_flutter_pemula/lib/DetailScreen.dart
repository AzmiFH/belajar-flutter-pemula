import 'dataHewan.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  final Animal animal;

  const DetailScreen({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1400) {
          return DetailWebPage(animal: animal);
        } else {
          return DetailMobilePage(animal: animal);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  final Animal animal;

  const DetailMobilePage({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fitur ini sedang dalam tahap pengembangan'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Text(
                animal.name,
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                animal.phonetic,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[400],
                  fontFamily: 'monospace',
                ),
              ),

              const SizedBox(height: 20),

              Hero(
                tag: animal.name,
                child: Container(
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    color: animal.color.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Stack(
                    children: [
                      Center(
                        child: animal.imagePath != null
                            ? Image.asset(
                                animal.imagePath!,
                                width: 200,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) =>
                                    Icon(
                                      animal.iconData,
                                      size: 120,
                                      color: animal.color,
                                    ),
                              )
                            : Icon(
                                animal.iconData,
                                size: 120,
                                color: animal.color,
                              ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 20,
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () async {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Suara ${animal.name} diputar'),
                                  duration: const Duration(seconds: 1),
                                ),
                              );
                              final player = AudioPlayer();
                              if (animal.name == 'Gajah') {
                                await player.play(
                                  AssetSource('audio/suaragajah.mp3'),
                                );
                              } else if (animal.name == 'Singa') {
                                await player.play(
                                  AssetSource('audio/suarasinga.mp3'),
                                );
                              } else if (animal.name == 'Beruang Coklat') {
                                await player.play(
                                  AssetSource('audio/suaraberuang.mp3'),
                                );
                              } else if (animal.name == 'Burung Hantu') {
                                await player.play(
                                  AssetSource('audio/suaraburunghantu.mp3'),
                                );
                              }
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: const Icon(
                                Icons.mic_none_rounded,
                                color: Colors.black87,
                                size: 28,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "Tahukah kamu? ${animal.funFact}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Text(
                animal.description,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[800],
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 30),

              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Fakta Penting",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 20),

              _buildFactItem("01", "Berat", animal.weight, animal.color),
              const SizedBox(height: 15),
              _buildFactItem(
                "02",
                "Tinggi",
                animal.height,
                Colors.orangeAccent,
              ),
              const SizedBox(height: 15),
              _buildFactItem("03", "Umur", animal.lifespan, Colors.greenAccent),
              const SizedBox(height: 15),
              _buildFactItem("04", "Makanan", animal.diet, Colors.redAccent),

              if (animal.name == 'Singa') ...[
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/6477378/pexels-photo-6477378.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/6052186/pexels-photo-6052186.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/6477379/pexels-photo-6477379.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              if (animal.name == 'Gajah') ...[
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/982021/pexels-photo-982021.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/86413/elephant-africa-okavango-delta-animal-86413.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/11760859/pexels-photo-11760859.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              if (animal.name == 'Beruang Coklat') ...[
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/14382748/pexels-photo-14382748.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/6780335/pexels-photo-6780335.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/35435/pexels-photo.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              if (animal.name == 'Burung Hantu') ...[
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/8911173/pexels-photo-8911173.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/2022648/pexels-photo-2022648.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://images.pexels.com/photos/2474014/pexels-photo-2474014.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFactItem(
    String number,
    String title,
    String value,
    Color color,
  ) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                color: color.withOpacity(1.0),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailWebPage extends StatelessWidget {
  final Animal animal;

  const DetailWebPage({Key? key, required this.animal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark_border, color: Colors.black),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Fitur ini sedang dalam tahap pengembangan'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Dunia Hewan',
                    style: TextStyle(fontFamily: 'Staatliches', fontSize: 32),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 400,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: animal.color,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: animal.imagePath != null
                                        ? Image.asset(
                                            animal.imagePath!,
                                            width: 300,
                                            fit: BoxFit.contain,
                                            errorBuilder:
                                                (context, error, stackTrace) =>
                                                    Icon(
                                                      animal.iconData,
                                                      size: 200,
                                                      color: Colors.white
                                                          .withOpacity(0.8),
                                                    ),
                                          )
                                        : Icon(
                                            animal.iconData,
                                            size: 200,
                                            color: Colors.white.withOpacity(
                                              0.8,
                                            ),
                                          ),
                                  ),
                                  Positioned(
                                    bottom: 20,
                                    right: 20,
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () async {
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Suara ${animal.name} diputar',
                                              ),
                                              duration: const Duration(
                                                seconds: 1,
                                              ),
                                            ),
                                          );
                                          final player = AudioPlayer();
                                          if (animal.name == 'Gajah') {
                                            await player.play(
                                              AssetSource(
                                                'audio/suaragajah.mp3',
                                              ),
                                            );
                                          } else if (animal.name == 'Singa') {
                                            await player.play(
                                              AssetSource(
                                                'audio/suarasinga.mp3',
                                              ),
                                            );
                                          } else if (animal.name ==
                                              'Beruang Coklat') {
                                            await player.play(
                                              AssetSource(
                                                'audio/suaraberuang.mp3',
                                              ),
                                            );
                                          } else if (animal.name ==
                                              'Burung Hantu') {
                                            await player.play(
                                              AssetSource(
                                                'audio/suaraburunghantu.mp3',
                                              ),
                                            );
                                          }
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                  0.1,
                                                ),
                                                blurRadius: 10,
                                                spreadRadius: 2,
                                              ),
                                            ],
                                          ),
                                          child: const Icon(
                                            Icons.mic_none_rounded,
                                            color: Colors.black87,
                                            size: 28,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 32),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  animal.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                                Text(
                                  animal.phonetic,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildInfoColumn(
                                      Icons.scale,
                                      animal.weight,
                                      "Berat",
                                    ),
                                    _buildInfoColumn(
                                      Icons.height,
                                      animal.height,
                                      "Tinggi",
                                    ),
                                    _buildInfoColumn(
                                      Icons.timer,
                                      animal.lifespan,
                                      "Umur",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade50,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "Fun Fact: ${animal.funFact}",
                                    style: const TextStyle(
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16.0,
                                  ),
                                  child: Text(
                                    animal.description,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Oxygen',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoColumn(IconData icon, String value, String label) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.black54),
        const SizedBox(height: 8.0),
        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Oxygen',
          ),
        ),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
