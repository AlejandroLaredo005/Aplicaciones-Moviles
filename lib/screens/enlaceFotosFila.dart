// ignore: file_names
import 'package:flutter/material.dart';
import 'menuLateral.dart';

class EnlaceFotosFila extends StatelessWidget {
  const EnlaceFotosFila({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotos en Fila"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribuye las imágenes equitativamente
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/images/foto1.jpeg', 
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/foto2.jpg', 
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/foto3.jpeg', 
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}