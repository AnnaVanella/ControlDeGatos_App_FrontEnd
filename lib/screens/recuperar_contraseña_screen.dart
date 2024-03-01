import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/theme/app_theme.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class RecuperarContraScreen extends StatelessWidget {
  const RecuperarContraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la imagen
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/recuperarContra.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Rectángulo superpuesto
          Positioned.fill(
            child: Rectangulo(),
          ),
          // Contenido centrado en el rectángulo
          TextoLoginScreen()
        ],
      ),
    );
  }
}
