// ignore: file_names
import 'package:flutter/material.dart';
import 'menuLateral.dart';

class EnlaceFotosColumna extends StatelessWidget {
  const EnlaceFotosColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fotos en Columna"),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'assets/images/foto1.jpeg', 
                width: 270,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/foto2.jpg', 
                width: 270,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/foto3.jpeg', 
                width: 270,
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