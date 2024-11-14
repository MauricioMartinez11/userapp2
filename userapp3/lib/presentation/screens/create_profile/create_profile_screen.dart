import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nombre'),
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Edad'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _occupationController,
              decoration: InputDecoration(labelText: 'Ocupación'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final name = _nameController.text;
                final age = _ageController.text;
                final occupation = _occupationController.text;
                context.go(
                  '/profile',
                  extra: {
                    'name': name,
                    'age': age,
                    'occupation': occupation,
                  },
                );
              },
              child: Text('Guardar y Ver Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}
