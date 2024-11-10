import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tarea1_alejandro/screens/enlaceFotosColumna.dart';
import 'package:tarea1_alejandro/screens/enlaceFotosFila.dart';
import 'package:tarea1_alejandro/screens/iconosPantalla.dart';
import 'package:tarea1_alejandro/screens/instagram.dart';
import 'package:tarea1_alejandro/screens/juegoImagenes.dart';
import 'Screens/menuLateral.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplo de drawer',
      routes: {
        '/': (context) => const MyHomePage(),
        '/EnlaceFotosFila': (context) => const EnlaceFotosFila(),
        '/EnlaceFotosColumna': (context) => const EnlaceFotosColumna(),
        '/IconosPantalla': (context) => const IconosPantalla(),
        '/JuegoImagen': (context) => const RandomImages(),
        '/Instagram': (context) => const Instagram(),
      },
      initialRoute: '/',
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          "Alejandro Laredo de los Reyes",
           style: GoogleFonts.lobster(),
          ),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Text(
          "Enlace github: https://github.com/AlejandroLaredo005/Aplicaciones-Moviles",
           style: GoogleFonts.openSans(
            fontSize: 23,
           ),
          ),
      ),
    );
  }
}
