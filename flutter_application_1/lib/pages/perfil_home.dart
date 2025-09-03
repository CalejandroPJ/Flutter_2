import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

class PerfilHome extends StatelessWidget {
   const PerfilHome({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(user.image),
              ),
              const SizedBox(height: 20),
              Text("Nombre: ${user.name}", style: const TextStyle(fontSize: 18)),
              Text("Edad: ${user.age}", style: const TextStyle(fontSize: 18)),
              Text("Categoría: ${user.category}", style: const TextStyle(fontSize: 18)),

              const Divider(height: 40, thickness: 2),

              Text("Dirección: ${user.address ?? 'No registrada'}", style: const TextStyle(fontSize: 16)),
              Text("Email: ${user.email ?? 'No disponible'}", style: const TextStyle(fontSize: 16)),
              Text("Teléfono: ${user.phone ?? 'No disponible'}", style: const TextStyle(fontSize: 16)),
              Text("Biografia: ${user.bio ?? 'No especificada'}", style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}