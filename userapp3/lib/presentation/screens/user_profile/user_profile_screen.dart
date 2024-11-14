import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  final String age;
  final String occupation;

  ProfileScreen({required this.name, required this.age, required this.occupation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: $name', style: TextStyle(fontSize: 18)),
            Text('Edad: $age', style: TextStyle(fontSize: 18)),
            Text('Ocupación: $occupation', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: Text('Regresar a Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}