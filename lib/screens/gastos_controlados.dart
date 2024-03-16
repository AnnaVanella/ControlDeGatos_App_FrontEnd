import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class GatosControladosScreen extends StatelessWidget {
  const GatosControladosScreen({super.key});
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
                top: 270,
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Column(
                    children: [
                      TextoLoginScreen(
                        texto: '¡owo!',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextoDes2Screen(
                        texto: 'owo.',
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
                      '!Como van las vacaciones!',
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

              //AVATAR A LA DERECHA
              Positioned(
                top: 10, // Ajusta la posición según sea necesario
                right: MediaQuery.of(context).size.width *
                    0.02, // Centra horizontalmente
                child: const CircularAvatar(
                  assetImagePath: 'assets/avatar.jpg',
                  radius: 24,
                ),
              ),

              //BOTONES DEL HOME
              Positioned(
                top: 130,
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
