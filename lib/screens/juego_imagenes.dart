// ignore: file_names
import 'dart:math';
import 'dart:async';
import 'package:tarea1_alejandro/routes/imports.dart';

class RandomImages extends StatefulWidget {
  const RandomImages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomImages createState() => _RandomImages();
}

class _RandomImages extends State<RandomImages> {
  int points = 0;
  int remainingTime = 3;
  late String randomImage;
  double randomX = 0.0;
  double randomY = 0.0;

  final imagePaths = [
    'assets/images/marianoemilio.jpg',
    'assets/images/sentado.jpeg',
    'assets/images/uvas.jpg',
    'assets/images/metrosexual.jpg',
    'assets/images/arriba.jpeg'
  ];

  late Timer timer;

  @override
  void initState() {
    super.initState();
    getRandomImage();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getRandomPosition(); 
    });
    startTimer();
  }

  // Cancela el timer cuando el widget se elimine
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Verifica si el widget sigue montado
      if (mounted) {  
        setState(() {
          if (remainingTime > 0) {
            remainingTime--;
          } else {
            points -= 2;
            remainingTime = 3;
            getRandomImage();
            getRandomPosition();
          }
        });
      }
    });
  }

@override
Widget build(BuildContext context) {
  // Calcular la altura ocupada por el texto
  double topTextHeight = 100.0; // Altura estimada para el texto (ajústalo según tu diseño)

  return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
      title: const Text('Juego de Imágenes'),
    ),
    drawer: const MenuLateral(),
    body: Stack(
      children: [
        // Posicionamos las imágenes debajo del área del texto
        Positioned(
          left: randomX,
          top: randomY + topTextHeight,  // Ajustar la posición Y para que las imágenes aparezcan debajo del texto
          child: GestureDetector(
            onTap: () {
              onImageTap(context);
            },
            child: Image.asset(
              randomImage,
              width: 120,
              height: 120,
            ),
          ),
        ),
        // Texto de puntaje y tiempo restante
        Positioned(
          top: 20,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Center(
                child: Text(
                  'Puntos: $points',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              Center(
                child: Text(
                  'Tiempo restante: $remainingTime',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}


  void getRandomImage() {
    Random random = Random();
    int randomNumber = random.nextInt(imagePaths.length);
    randomImage = imagePaths[randomNumber];
  }

  void getRandomPosition() {
    Random random = Random();
    double maxWidth = MediaQuery.of(context).size.width - 140;
    double maxHeight = MediaQuery.of(context).size.height - 340;
    randomX = random.nextDouble() * maxWidth;
    randomY = random.nextDouble() * maxHeight;
  }

  void onImageTap(BuildContext context) {
    points++;
    remainingTime = 3;
    getRandomImage();
    getRandomPosition();
    setState(() {});

    // Mostrar el mensaje de SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('¡Bien hecho! +1 punto'),
        duration: Duration(milliseconds: 500), 
      ),
    );
  }
}
