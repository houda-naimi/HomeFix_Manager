// lib/technician_list_page.dart
import 'package:flutter/material.dart';
import 'package:homefix_manager/technician_detail_page.dart';

class TechnicianListPage extends StatelessWidget {
  final String category;

  const TechnicianListPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<String> technicians = _getTechniciansForCategory(category);

    return Scaffold(
      appBar: AppBar(
        title: Text('Techniciens en $category'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: technicians.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(technicians[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TechnicianDetailPage(
                    technician: technicians[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  List<String> _getTechniciansForCategory(String category) {
    switch (category) {
      case 'Plomberie':
        return ['Mohamed NAIMI', 'ALI ALOUI', 'KARIM Ben mohamed'];
      case 'Électricité':
        return ['Anes ALOUI', 'Mouadh khdhaier', 'Oussema Louati'];
      case 'Peinture':
        return ['Anes ALOUI', 'Mouadh khdhaier', 'Oussema Louati'];
      case 'Chauffage':
        return ['Anes ALOUI', 'Mouadh khdhaier', 'Oussema Louati'];
      case 'Serrurerie':
        return ['Anes ALOUI', 'Mouadh khdhaier', 'Oussema Louati'];
      default:
        return [];
    }
  }
}
