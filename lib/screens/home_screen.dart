import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Fondo de la imagen
              Positioned(
                // left: 0,
                // top: 0,
                child: Image.asset(
                  'assets/home1.jpg',
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 492.0,
                ),
              ),

              const Positioned(
                top: 440,
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Column(
                    children: [
                      TextoLoginScreen(
                        texto:
                            '¡Bienvenido a tu gestor de gastos personalizado para tus vacaciones!',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextoDes2Screen(
                        texto:
                            'Por favor, proporciona la información requerida para crear tu cuenta.',
                        leftPadding: 0.1,
                        rightPadding: 0.1,
                        topPadding: 0.32,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 70,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    // Ancho máximo del texto
                    child: const Text(
                      '!Como van las vacaciones! en Argentina',
                      textAlign: TextAlign.center, // Alinear el texto al centro
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 270,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    // Ancho máximo del texto
                    child: Text(
                      'Presupuesto para las vacaciones',
                      textAlign: TextAlign.center, // Alinear el texto al centro
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 300,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    // Ancho máximo del texto
                    child: const Text(
                      '\$ 1.538.000',
                      textAlign: TextAlign.center, // Alinear el texto al centro
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFC727),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 350,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    // Ancho máximo del texto
                    child: const Text(
                      'Presupuesto Restante',
                      textAlign: TextAlign.center, // Alinear el texto al centro
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 380,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    // Ancho máximo del texto
                    child: const Text(
                      '\$ 1.247.000',
                      textAlign: TextAlign.center, // Alinear el texto al centro
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF6600),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 10, // Ajusta la posición según sea necesario
                right: MediaQuery.of(context).size.width *
                    0.02, // Centra horizontalmente
                child: const CircularAvatar(
                  assetImagePath: 'assets/avatar.jpg',
                  radius: 24,
                ),
              ),

              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: MyWidget(),
              ),
            ], // Aquí se cierra el children del Stack
          ),
        ),
      ),
    );
  }
}
