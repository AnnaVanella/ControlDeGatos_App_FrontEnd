import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/screens/screens.dart';
import 'package:flutter_hegga_controldegastos_frontend/theme/app_theme.dart';

void main() => runApp(const ControlDeGastos());

class ControlDeGastos extends StatelessWidget {
  const ControlDeGastos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Control de Gastos',
      theme: ThemeData(primarySwatch: Colors.orange, useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: "onboarding",
      routes: {
        'home': (_) => const HomeScreen(),
        // 'login': (_) => LoginScreen(),
        'recuperar_contra': (_) => RecuperarContraScreen(),
        'crear_cuenta': (_) => CrearUsuarioWidget(),
        'crear_cuenta_ip': (_) => CrearCuentaIpScreen(),
        'cambiar_contra': (_) => CambiarContraScreen(),
        'cambiar_datos': (_) => DatosPersonalesScreen(),
        'panorama': (_) => PanoramaScreen(),
        'GatosControlados': (_) => GatosControladosScreen(),
        'fechasViajes': (_) => FechasViajesScreen(),
        'login2': (_) => LoginWidget(),
        // 'onboarding2': (_) => Onboarding2Screen(),
        'onboarding': (_) => OnboardingScreen()
      },
    );
  }
}
