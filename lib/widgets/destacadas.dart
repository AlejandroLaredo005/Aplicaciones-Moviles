import 'package:flutter/material.dart';

class Destacadas extends StatelessWidget {
  const Destacadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 75, 121, 213),
                padding: const EdgeInsets.symmetric(
                  horizontal: 140.0,
                  vertical: 10.0,
                ),
              ),
              child: const Text(
                'Editar Perfil',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey[300],
                    foregroundColor: Colors.black,
                    child: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    "Nuevo",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/yo.jpg'),
                  ),
                  Text("Yo"),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/toros.jpg'),
                  ),
                  Text("Toros"),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/trabajo.png'),
                  ),
                  Text("Trabajando"),
                ],
              ),
            ),
            const Expanded(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/images/playa.jpg'),
                  ),
                  Text("Playita"),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}