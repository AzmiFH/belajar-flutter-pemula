import 'package:flutter/material.dart';
import 'package:submission_projek_akhir_flutter_pemula/DetailScreen.dart';
import 'package:submission_projek_akhir_flutter_pemula/dataHewan.dart';

class AnimalGridPage extends StatefulWidget {
  const AnimalGridPage({super.key});

  @override
  State<AnimalGridPage> createState() => _AnimalGridPageState();
}

class _AnimalGridPageState extends State<AnimalGridPage> {
  List<Animal> _foundAnimals = [];
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _foundAnimals = animalList;
  }

  void _runFilter(String enteredKeyword) {
    List<Animal> results = [];
    if (enteredKeyword.isEmpty) {
      results = animalList;
    } else {
      results = animalList
          .where(
            (animal) => animal.name.toLowerCase().contains(
              enteredKeyword.toLowerCase(),
            ),
          )
          .toList();
    }

    setState(() {
      _foundAnimals = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _isSearching
                      ? Expanded(
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: _searchController,
                              onChanged: (value) => _runFilter(value),
                              autofocus: true,
                              decoration: const InputDecoration(
                                hintText: 'Cari hewan...',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 14,
                                ),
                              ),
                            ),
                          ),
                        )
                      : const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Dunia",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1.0,
                              ),
                            ),
                            Text(
                              "Hewan",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                height: 1.2,
                              ),
                            ),
                          ],
                        ),

                  if (_isSearching) const SizedBox(width: 16),

                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(
                        _isSearching ? Icons.close : Icons.search,
                        size: 28,
                      ),
                      color: Colors.black,
                      onPressed: () {
                        setState(() {
                          if (_isSearching) {
                            _isSearching = false;
                            _searchController.clear();
                            _foundAnimals = animalList;
                          } else {
                            _isSearching = true;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: _foundAnimals.isEmpty
                    ? const Center(child: Text("Hewan tidak ditemukan"))
                    : GridView.builder(
                        itemCount: _foundAnimals.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                            ),
                        itemBuilder: (context, index) {
                          return _buildAnimalCard(
                            context,
                            _foundAnimals[index],
                          );
                        },
                      ),
              ),
            ),
          ],
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
