import 'package:google_fonts/google_fonts.dart';
import 'package:tarea1_alejandro/routes/imports.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
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
