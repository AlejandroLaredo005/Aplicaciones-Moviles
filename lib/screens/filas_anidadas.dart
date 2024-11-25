import 'package:tarea1_alejandro/routes/imports.dart';

class FilasAnidadas extends StatelessWidget {
  const FilasAnidadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filas y Columnas Anidadas'),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Primera fila con 1 imagen y texto debajo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/mariano.webp',
                      width: 100,
                      height: 100,
                    ),
                    const Text('Metrosexual'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Segunda fila con 2 imágenes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/yo.jpg',
                      width: 100,
                      height: 100,
                    ),
                    const Text('Posando'),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/toros.jpg',
                      width: 100,
                      height: 100,
                    ),
                    const Text('Toros'),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Tercera fila con 3 imágenes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/trabajo.png',
                      width: 100,
                      height: 100,
                    ),
                    const Text('Trabajo'),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/playa.jpg',
                      width: 100,
                      height: 100,
                    ),
                    const Text('Playita'),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/marianoemilio.jpg',
                      width: 100,
                      height: 100,
                    ),
                    const Text('Familia'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
