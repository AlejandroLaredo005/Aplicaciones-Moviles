// ignore: file_names
import 'package:flutter/material.dart';

class BarraNavegacion extends StatelessWidget {
  const BarraNavegacion({super.key});

@override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_box),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('assets/images/mariano.webp'),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}