import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_model.dart';
import 'perfil_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UserModel> users = [
    UserModel(
        name: "Miguel Angel",
        age: 38,
        category: "mayor de edad",
        image:
            "https://es.wikiquote.org/wiki/Miguel_%C3%81ngel#/media/Archivo:Miguel_%C3%81ngel,_por_Daniele_da_Volterra_(detalle).jpg",
        email: "miguelangelo@gmail.com",
        phone: "3001234567",
        address: "Caprese Michelangelo, Florencia (República)",
        bio: "Triunfó en todas las artes en las que trabajó."),
    UserModel(
        name: "Donatello",
        age: 17,
        category: "menor de edad",
        image: "https://www.biografiasyvidas.com/biografia/d/fotos/donatello.jpg",
        email: "donaaa@gmail.com",
        phone: "3109876543",
        address: "Florencia, Italia",
        bio: "Fuerza innovadora en el campo de la escultura monumental."),
    UserModel(
        name: "Rafael",
        age: 20,
        category: "mayor de edad",
        image: "https://www.epdlp.com/fotos/rafael2.jpg",
        email: "raphaell@gmail.com",
        phone: "3151112233",
        address: "Urbino, Italia",
        bio: "Realizó importantes aportes en la arquitectura y, como inspector de antigüedades"),
    UserModel(
        name: "Leonardo",
        age: 21,
        category: "mayor de edad",
        image: "https://foroalfa.org/imagenes/ilustraciones/hd/1989.webp",
        email: "vitruvio@gmail.com",
        phone: "3174455667",
        address: "Vinci, Italia",
        bio: "Padre del renacimiento"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.image),
              ),
              title: Text(user.name),
              subtitle: Text(user.category),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PerfilHome(user: user)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
