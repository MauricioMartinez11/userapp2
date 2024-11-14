import 'package:flutter/material.dart';
import 'package:userapp3/presentation/screens/create_profile/create_profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreateProfileScreen()));
            },
            child: Text('Crear perfil')),
      ),
    );
  }
}
// class _HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Inicio'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => CreateProfileScreen()),
//             );
//           },
//           child: Text('Crear perfil'),
//         ),
//       ),
//     );
//   }
// }
