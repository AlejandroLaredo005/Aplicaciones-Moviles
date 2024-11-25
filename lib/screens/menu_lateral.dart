// ignore: file_names
import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtiene la ruta actual
    String currentRoute = ModalRoute.of(context)?.settings.name ?? '';

    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Alejandro"),
            accountEmail: Text("Navegue entre pestañas"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://ichef.bbci.co.uk/news/660/cpsprodpb/6AFE/production/_102809372_machu.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: currentRoute == '/' // Color cuando estamos en la ruta principal
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.home, color: Colors.black), // Icono de casa
              title: Text(
                "Inicio",
                style: currentRoute == '/'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop(); // Cierra el drawer
                Navigator.of(context).popUntil((route) => route.isFirst); // Regresa a la pantalla principal
              },
            ),
          ),
          Ink(
            color: currentRoute == '/EnlaceFotosFila'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.photo, color: Colors.black), // Icono de fotos
              title: Text(
                "Fotos Fila",
                style: currentRoute == '/EnlaceFotosFila'
                ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/EnlaceFotosFila');
              },
            ),
          ),
          Ink(
            color: currentRoute == '/EnlaceFotosColumna'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.photo_album, color: Colors.black), // Icono de álbum
              title: Text(
                "Fotos Columna",
                style: currentRoute == '/EnlaceFotosColumna'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/EnlaceFotosColumna');
              },
            ),
          ),
          Ink(
            color: currentRoute == '/IconosPantalla'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.black),
              title: Text(
                "Iconos",
                style: currentRoute == '/IconosPantalla'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/IconosPantalla');
              },
            ),
          ),
          Ink(
            color: currentRoute == '/Helicoptero'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.timer, color: Colors.black), // Icono de contador
              title: Text(
                "Helicoptero",
                style: currentRoute == '/Helicoptero'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Helicoptero'); // Accede a la ruta Contador
              },
            ),
          ),
          Ink(
            color: currentRoute == '/Contador'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.timer, color: Colors.black), // Icono de contador
              title: Text(
                "Contador",
                style: currentRoute == '/Contador'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Contador'); // Accede a la ruta Contador
              },
            ),
          ),
          Ink(
            color: currentRoute == '/FilasAnidadas'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.timer, color: Colors.black), // Icono de contador
              title: Text(
                "FilasAnidadas",
                style: currentRoute == '/FilasAnidadas'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/FilasAnidadas'); // Accede a la ruta Contador
              },
            ),
          ),
          Ink(
            color: currentRoute == '/Instagram'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.black),
              title: Text(
                "Instagram",
                style: currentRoute == '/Instagram'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Instagram');
              },
            ),
          ),
          Ink(
            color: currentRoute == '/JuegoImagen'
                ? const Color.fromARGB(255, 0, 55, 255) // Color cuando es la ruta actual
                : const Color(0xFFE1F5FE), // Color por defecto
            child: ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.black),
              title: Text(
                "Juego Imagen",
                style: currentRoute == '/JuegoImagen'
                    ? const TextStyle(color: Colors.white) // Estilo para la ruta actual
                    : const TextStyle(color: Colors.black), // Estilo por defecto
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/JuegoImagen');
              },
            ),
          ),
        ],
      ),
    );
  }
}