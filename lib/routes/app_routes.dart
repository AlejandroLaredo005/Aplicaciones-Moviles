import 'package:tarea1_alejandro/routes/imports.dart';

class AppRoutes {
  // Definir nombres para las rutas
  static const String home = '/';
  static const String enlaceFotosFila = '/EnlaceFotosFila';
  static const String enlaceFotosColumna = '/EnlaceFotosColumna';
  static const String iconosPantalla = '/IconosPantalla';
  static const String juegoImagen = '/JuegoImagen';
  static const String instagram = '/Instagram';
  static const String contador = '/Contador';
  static const String filasAnidadas = '/FilasAnidadas';
  static const String helicoptero = '/Helicoptero';
  static const String formularios = '/Formulario';

  // Mapa de rutas
  static final Map<String, WidgetBuilder> routes = {
    home: (context) => const MyHomePage(),
    enlaceFotosFila: (context) => const EnlaceFotosFila(),
    enlaceFotosColumna: (context) => const EnlaceFotosColumna(),
    iconosPantalla: (context) => const IconosPantalla(),
    juegoImagen: (context) => const RandomImages(),
    instagram: (context) => const Instagram(),
    contador: (context) => const Contador(),
    filasAnidadas: (context) => const FilasAnidadas(),
    helicoptero: (context) => const Helicoptero(),
    formularios: (context) => const FormularioScreen(),
  };
}