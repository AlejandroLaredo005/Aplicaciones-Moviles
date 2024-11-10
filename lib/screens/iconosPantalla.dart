// ignore: file_names
import 'package:flutter/material.dart';
import 'menuLateral.dart';

class IconosPantalla extends StatelessWidget {
  const IconosPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iconos"),
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: GridView.count(
          crossAxisCount: 3, 
          children: <Widget>[
            _buildIconTile(Icons.home, "Inicio"),
            _buildIconTile(Icons.photo, "Fotos"),
            _buildIconTile(Icons.dashboard, "Dashboard"),
            _buildIconTile(Icons.settings, "Configuración"),
            _buildIconTile(Icons.contact_phone, "Contactos"),
          ],
        ),
      ),
    );
  }

  Widget _buildIconTile(IconData icon, String label) {
    return Card(
      elevation: 4.0, 
      child: InkWell(
        onTap: () {
          print("$label icon pressed");
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 40.0, color: Colors.blue),
            const SizedBox(height: 8.0),
            Text(label, style: const TextStyle(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}
