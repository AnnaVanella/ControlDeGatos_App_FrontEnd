import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class FechasViajesScreen extends StatelessWidget {
  const FechasViajesScreen({super.key});
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
                top: 350,
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  color: Colors.white,
                  child: Column(
                    children: [
                      IconoTexto(
                        icon: Icons.flight,
                        text: 'Fechas del viaje',
                        iconColor: Color(0xFF149A61),
                        iconSize: 36,
                        textColor: Color(0xFF149A61),
                        textSize: 28,
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      SubtextoScreen(
                        texto: 'Aquí puedes ver tus viajes programados:',
                        leftPadding: 0.01,
                        rightPadding: 0.01,
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

              Positioned(
                top: 270,
                right: 54.0,
                left: 54.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(322, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                      side: BorderSide(color: Color(0xFFBF951D), width: 1),
                    ),
                    backgroundColor: Color(0xFFFFC727),
                    shadowColor: Colors.black.withOpacity(0.25),
                    elevation: 4,
                  ),
                  onPressed: () {},
                  child: Text(
                    'Agregar nuevo viaje',
                    style: const TextStyle(
                        color: Color(
                            0xFF000000), // Cambia este color según tus necesidades
                        fontSize: 18,
                        fontFamily:
                            'Montserrat', // Ajusta el tamaño del texto según tus necesidades
                        fontWeight: FontWeight.bold),
                  ),
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
