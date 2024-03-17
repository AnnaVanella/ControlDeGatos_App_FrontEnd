import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class Login2Screen extends StatelessWidget {
  Login2Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la imagen
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/login.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Rectángulo superpuesto
          Positioned.fill(
            child: Rectangulo(),
          ),

          // Botón personalizado en la esquina superior derecha

          const Positioned(
              top: 220,
              left: 0,
              right: 0,
              child: TextoLoginScreen(
                texto: 'Vacasiones aqui vamos',
              )),

          const Positioned(
            top: 280,
            left: 30,
            right: 30,
            child: TextoDes2Screen(
              texto:
                  'Recarga tus energías, desconéctate de la rutina y construye recuerdos inolvidables en tus vacaciones.',
            ),
          ),

          SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 400, bottom: 150, right: 36, left: 36),
                child: Column(
                  key: myFormKey,
                  children: const [
                    UserInput2Field(
                      icon: Icons.person_2_outlined,
                      text: 'Usuario',
                    ),
                    SizedBox(height: 2),
                    CustomInputField(
                      hintText: 'Escribe tu correo electronico',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 6),
                    UserInput2Field(
                      icon: Icons.lock_clock_outlined,
                      text: 'Contraseña',
                    ),
                    SizedBox(height: 2),
                    CustomInputField(
                      hintText: 'Ingresa tu contraseña',
                      obscureText: true,
                      suffixIcon: Icons.visibility,
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 100,
            right: 20,
            child: CustomTextButton(
              icon: Icons.add,
              iconSize: 18,
              buttonText: 'Crear Usuario',
              fontSize: 16,
              onPressed: () {
                Navigator.pushNamed(context, 'crear_cuenta');
              },
            ),
          ),

          // Botón de texto personalizado en la esquina inferior derecha
          Positioned(
            bottom: 300,
            right: 20,
            child: CustomTextButton(
              icon: Icons.lock_reset,
              iconSize: 14,
              buttonText: 'Recuperar contraseña',
              fontSize: 12,
              onPressed: () {
                Navigator.pushNamed(context, 'recuperar_contra');
              },
            ),
          ),

          CustomElevatedButton(
            buttonText: 'Ingresar',
            onPressed: () {
              Navigator.pushNamed(context, 'home');
            },
            top: 720,
            right: 84,
          ),
        ],
      ),
    );
  }
}
