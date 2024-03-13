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
        initialRoute: "cambiar_contra",
        routes: {
          'home': (_) => const HomeScreen(),
          // 'login': (_) => LoginScreen(),
          'recuperar_contra': (_) => RecuperarContraScreen(),
          'crear_cuenta': (_) => CrearCuentaScreen(),
          'crear_cuenta_ip': (_) => CrearCuentaIpScreen(),
          'cambiar_contra': (_) => CambiarContraScreen(),
          'panorama': (_) => PanoramaScreen(),
          'GatosControlados': (_) => PanoramaScreen(),
          'fechas': (_) => FechasViajesScreen(),
          'login2': (_) => Login2Screen(),
          'onboarding2': (_) => Onboarding2Screen(),
          'onboarding': (_) => OnboardingScreen()
        },
        theme: AppTheme.lightTheme);
  }
}
