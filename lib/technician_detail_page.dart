// lib/technician_detail_page.dart
import 'package:flutter/material.dart';

class TechnicianDetailPage extends StatelessWidget {
  final String technician;

  const TechnicianDetailPage({super.key, required this.technician});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Détails de $technician'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              technician,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Description : Technicien expérimenté avec 5 ans d\'expérience dans le domaine.',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Contacter ce technicien'),
            ),
          ],
        ),
      ),
    );
  }
}
