import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control de Gastos',
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      routes: {
        'home': (_) => const HomeScreen(),
        'login': (_) => const LoginScreen(),
      },
    );
  }
}
