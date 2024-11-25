import 'package:tarea1_alejandro/routes/imports.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Instagram createState() => _Instagram();
}

class _Instagram extends State<Instagram> {
  // Variable para controlar el índice del icono seleccionado
  int _indiceSeleccionado = 0;

  void _onItemTapped(int indice) {
    setState(() {
      // Cambia el índice cuando el usuario selecciona un icono
      _indiceSeleccionado = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('mariano32'),
      ),
      drawer: const MenuLateral(),
      body: Column(
        children: [
          const Perfil(),
          const Destacadas(),
          
          // Espacio entre la fila de fotos y la fila de iconos
          const SizedBox(height: 20),

          // Línea separadora
          const Divider(
            // Color de la línea
            color: Colors.grey,
            // Grosor de la línea 
            thickness: 1, 
          ),

          // Fila con los 2 iconos (Cuadrícula y Usuario)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Columna 1: Icono de la cuadrícula (Fotos)
              Expanded(
                child: IconButton(
                  onPressed: () => _onItemTapped(0),
                  icon: const Icon(
                    // Icono de cuadrícula (fotos)
                    Icons.grid_on, 
                    size: 30,
                  ),
                ),
              ),

              // Columna 2: Icono de usuario (Perfil)
              Expanded(
                child: IconButton(
                  onPressed: () => _onItemTapped(1),
                  icon: const Icon(
                    // Icono de usuario
                    Icons.person, 
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Barra de navegación con la línea que se mueve
          SizedBox(
            height: 2.0,
            // Ocupa toda la pantalla
            width: MediaQuery.of(context).size.width, 
            child: Stack(
              children: [
                AnimatedAlign(
                  alignment: _indiceSeleccionado == 0 ? Alignment.centerLeft : Alignment.centerRight,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    height: 2.0,
                    // Tamaño de la línea
                    width: MediaQuery.of(context).size.width / 2, 
                    // Color de la línea
                    color: Colors.blue, 
                  ),
                ),
              ],
            ),
          ),

          // Mostrar el GridView solo si el icono de fotos está seleccionado
          Visibility(
            visible: _indiceSeleccionado == 0,
            child: Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  // Tres columnas
                  crossAxisCount: 3, 
                  crossAxisSpacing: 2.0,
                  mainAxisSpacing: 2.0,
                ),
                // Número de imágenes 
                itemCount: 9, 
                itemBuilder: (BuildContext context, int index) {
                  // Las imágenes están predefinidas
                  List<String> imagenes = [
                    'assets/images/playa.jpg',
                    'assets/images/uvas.jpg',
                    'assets/images/toros.jpg',
                    'assets/images/trabajo.png',
                    'assets/images/yo.jpg',
                    'assets/images/metrosexual.jpg',
                    'assets/images/marianoemilio.jpg',
                    'assets/images/arriba.jpeg',
                    'assets/images/sentado.jpeg'
                  ];

                  return Image.asset(
                      // Ruta de las imágenes
                      imagenes[index], 
                      fit: BoxFit.cover,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BarraNavegacion(),
    );
  }
}
