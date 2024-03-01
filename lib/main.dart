import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/screens/screens.dart';
import 'package:flutter_hegga_controldegastos_frontend/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Control de Gastos',
        debugShowCheckedModeBanner: false,
        initialRoute: "login",
        routes: {
          'home': (_) => const HomeScreen(),
          'login': (_) => LoginScreen(),
          'recuperar_contra': (_) => RecuperarContraScreen(),
          'crear_cuenta': (_) => CrearCuentaScreen(),
          'panorama': (_) => PanoramaScreen(),
          'GatosControlados': (_) => PanoramaScreen(),
          'fechas': (_) => FechasViajesScreen(),
        },
        theme: AppTheme.lightTheme);
  }
}
