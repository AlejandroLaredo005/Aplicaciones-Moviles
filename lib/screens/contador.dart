import 'package:tarea1_alejandro/routes/imports.dart';

class Contador extends StatefulWidget {
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int vecesPulsado = 0;

  // Incrementa el contador
  void incrementar() {
    setState(() {
      vecesPulsado++;
    });
  }

  // Resta 1 al contador
  void restar() {
    setState(() {
      if (vecesPulsado > 0) {
        vecesPulsado--;
      }
    });
  }

  // Resetea el contador a cero
  void resetear() {
    setState(() {
      vecesPulsado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Contador de Pulsos")),
      ),
      drawer: const MenuLateral(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Has pulsado $vecesPulsado veces",
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: incrementar,
                  child: const Text("Sumar"),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: restar,
                  child: const Text("Restar"),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: resetear,
                  child: const Text("Resetear"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
