// ignore: file_names
import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:tarea1_alejandro/screens/menuLateral.dart';  

class RandomImages extends StatefulWidget {
  const RandomImages({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomImages createState() => _RandomImages();
}

class _RandomImages extends State<RandomImages> {
  int points = 0;
  int remainingTime = 10;
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
            remainingTime = 10;
            getRandomImage();
            getRandomPosition();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Juego de Imágenes'),
      ),
      drawer: const MenuLateral(),
      body: Stack(
        children: [
          Positioned(
            left: randomX,
            top: randomY,
            child: GestureDetector(
              onTap: () {
                onImageTap();
              },
              child: Image.asset(
                randomImage,
                width: 120,
                height: 120,
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Puntos: $points',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Center(
                  child: Text(
                    'Tiempo restante: $remainingTime',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
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
    double maxHeight = MediaQuery.of(context).size.height - 140;
    randomX = random.nextDouble() * maxWidth;
    randomY = random.nextDouble() * maxHeight;
  }

  void onImageTap() {
    points++;
    remainingTime = 10;
    getRandomImage();
    getRandomPosition();
    setState(() {});
  }
}


