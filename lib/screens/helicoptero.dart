import 'package:tarea1_alejandro/routes/imports.dart';

class Helicoptero extends StatelessWidget {
  const Helicoptero({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aterrizaje para Helicópteros'),
      ),
      drawer: const MenuLateral(),
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.only(top: 40), 
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.orange,
              width: 10,
            ),
          ),
          width: 280,
          height: 280,
          alignment: Alignment.center,
          child: const Text(
            'H',
            style: TextStyle(
              fontSize: 180,
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
