// lib/main.dart
import 'package:flutter/material.dart';
import 'technician_list_page.dart'; 

void main() {
  runApp(const HomeFixManagerApp());
}

class HomeFixManagerApp extends StatelessWidget {
  const HomeFixManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomeFix Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> categories = [
    {'name': 'Plomberie', 'icon': Icons.plumbing, 'color': Colors.blue},
    {'name': 'Électricité', 'icon': Icons.electric_meter, 'color': Colors.yellow},
    {'name': 'Peinture', 'icon': Icons.brush, 'color': Colors.orange},
    {'name': 'Chauffage', 'icon': Icons.thermostat, 'color': Colors.red},
    {'name': 'Serrurerie', 'icon': Icons.lock, 'color': Colors.green},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeFix Manager'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Sélectionnez un service',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  var category = categories[index];
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: Icon(
                        category['icon'],
                        size: 50,
                        color: category['color'],
                      ),
                      title: Text(
                        category['name'],
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TechnicianListPage(
                              category: category['name'],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
