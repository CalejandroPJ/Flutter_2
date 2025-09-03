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
        name: "Lionel Messi",
        age: 38,
        category: "mayor de edad",
        image:
            "https://fifpro.org/media/5chb3dva/lionel-messi_imago1019567000h.jpg?rxy=0.32986930611281567,0.18704579979466449&rnd=133378758718600000",
        email: "messithegoat@gmail.com",
        phone: "3001234567",
        address: "Rosario, Argentina",
        bio: "El mejor futbolista de todos los tiempos"),
    UserModel(
        name: "Neymar JR",
        age: 17,
        category: "menor de edad",
        image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeqF6RYjRkUGK6NjRmjY56GgqBm8Nh9bHQaQ&s",
        email: "ney@gmail.com",
        phone: "3109876543",
        address: "Bogotá, Colombia",
        bio: "Ultimo jugador con su escencia brasileña."),
    UserModel(
        name: "Paul Pogba",
        age: 20,
        category: "mayor de edad",
        image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cc/FRA-ARG_%2811%29_-_Paul_Pogba_%28cropped_2%29.jpg/250px-FRA-ARG_%2811%29_-_Paul_Pogba_%28cropped_2%29.jpg",
        email: "pogba@gmail.com",
        phone: "3151112233",
        address: "Medellín, Colombia",
        bio: "El talento mas desperdiciado"),
    UserModel(
        name: "Ronaldinho",
        age: 21,
        category: "mayor de edad",
        image: "https://i.guim.co.uk/img/media/c5eb23c77cc79f67a6f6064f0726bcc614327b30/0_0_3300_1979/master/3300.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=c328454560966d5d110daf03eb78e538",
        email: "ronaldinhofiestero1@gmail.com",
        phone: "3174455667",
        address: "Barranquilla, Colombia",
        bio: "El jugador con las mejores skills del mundo"),
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
