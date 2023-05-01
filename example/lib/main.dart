import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Height Grid View',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auto Height Grid View'),
        centerTitle: true,
      ),
      body: AutoHeightGridView(
        itemCount: _cats.length,
        builder: (context, index) {
          return Card(
            child: SizedBox(
              height: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: Image.asset(
                      width: double.infinity,
                      height: 110,
                      fit: BoxFit.cover,
                      _cats[index].imagePath,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Text(
                      _cats[index].name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  final List<CatModel> _cats = [
    CatModel(name: 'Bella', imagePath: 'assets/images/bella.jpeg'),
    CatModel(name: 'Charlie', imagePath: 'assets/images/charlie.jpeg'),
    CatModel(name: 'Luna', imagePath: 'assets/images/luna.jpeg'),
    CatModel(name: 'Max', imagePath: 'assets/images/max.jpeg'),
    CatModel(name: 'Mittens', imagePath: 'assets/images/mittens.jpeg'),
    CatModel(name: 'Oliver', imagePath: 'assets/images/oliver.jpeg'),
    CatModel(name: 'Simba', imagePath: 'assets/images/simba.jpeg'),
    CatModel(name: 'Tiger', imagePath: 'assets/images/tiger.jpeg'),
    CatModel(name: 'Tigger', imagePath: 'assets/images/tigger.jpeg'),
    CatModel(name: 'Whiskers', imagePath: 'assets/images/whiskers.jpeg'),
    CatModel(name: 'Bella', imagePath: 'assets/images/bella.jpeg'),
    CatModel(name: 'Charlie', imagePath: 'assets/images/charlie.jpeg'),
    CatModel(name: 'Luna', imagePath: 'assets/images/luna.jpeg'),
    CatModel(name: 'Max', imagePath: 'assets/images/max.jpeg'),
    CatModel(name: 'Mittens', imagePath: 'assets/images/mittens.jpeg'),
    CatModel(name: 'Oliver', imagePath: 'assets/images/oliver.jpeg'),
    CatModel(name: 'Simba', imagePath: 'assets/images/simba.jpeg'),
    CatModel(name: 'Tiger', imagePath: 'assets/images/tiger.jpeg'),
    CatModel(name: 'Tigger', imagePath: 'assets/images/tigger.jpeg'),
    CatModel(name: 'Whiskers', imagePath: 'assets/images/whiskers.jpeg'),
    CatModel(name: 'Bella', imagePath: 'assets/images/bella.jpeg'),
    CatModel(name: 'Charlie', imagePath: 'assets/images/charlie.jpeg'),
    CatModel(name: 'Luna', imagePath: 'assets/images/luna.jpeg'),
    CatModel(name: 'Max', imagePath: 'assets/images/max.jpeg'),
    CatModel(name: 'Mittens', imagePath: 'assets/images/mittens.jpeg'),
    CatModel(name: 'Oliver', imagePath: 'assets/images/oliver.jpeg'),
    CatModel(name: 'Simba', imagePath: 'assets/images/simba.jpeg'),
    CatModel(name: 'Tiger', imagePath: 'assets/images/tiger.jpeg'),
    CatModel(name: 'Tigger', imagePath: 'assets/images/tigger.jpeg'),
    CatModel(name: 'Whiskers', imagePath: 'assets/images/whiskers.jpeg'),
  ];
}

class CatModel {
  final String name;
  final String imagePath;

  CatModel({required this.name, required this.imagePath});
}
