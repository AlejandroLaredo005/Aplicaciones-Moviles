import 'routes/imports.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rutas',
      debugShowCheckedModeBanner: false,
      // Ruta inicial
      initialRoute: AppRoutes.home, 
      // Definición de rutas
      routes: AppRoutes.routes, 
      theme: AppThemes.blueTheme
    );
  }
}
