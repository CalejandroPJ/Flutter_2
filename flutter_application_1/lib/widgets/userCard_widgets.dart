import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';

class CardPrueba extends StatelessWidget {
  const CardPrueba({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
      
      Text('nombre: ${user.name}'),
      Text('edad: ${user.age.toString()}'),
      Text('categoria: ${user.category}'),
      ]
      ),
    );
  }
}
