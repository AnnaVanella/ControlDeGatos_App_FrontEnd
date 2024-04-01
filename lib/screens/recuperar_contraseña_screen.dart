import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class RecuperarContraScreen extends StatelessWidget {
  const RecuperarContraScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    String? correo;

    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la imagen
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/recuperarContra.jpg'), // Cambiar la posicion de la imagen
                fit: BoxFit.fill,
              ),
            ),
          ),

          // Rectángulo superpuesto
          Positioned.fill(
            child: Rectangulo(),
          ),

          // Contenido centrado en el rectángulo
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
                  'Ingresa el correo electrónico con el que te registraste y recibirás un mensaje para restablecer tu contraseña.',
            ),
          ),

          SingleChildScrollView(
            child: Container(
              child: Padding(
                padding:
                    EdgeInsets.only(top: 416, bottom: 150, right: 36, left: 36),
                child: Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      const UserInput2Field(
                        icon: Icons.person_2_outlined,
                        text: 'Usuario',
                      ),
                      const SizedBox(height: 2),
                      CustomInputField(
                        // labelText: 'Nombre',
                        hintText: 'Escribe tu correo electronico',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          correo = value;
                          //que no este vacio
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu correo electrónico';
                          }
                          //que sea un correo
                          if (!value.contains('@')) {
                            return 'Ingresa un correo electrónico válido';
                          }
                          // Verificar si el correo electrónico contiene un punto después del símbolo '@'
                          final regex = RegExp(r'@[^@\s]+\.[^@\s]+');
                          if (!regex.hasMatch(value)) {
                            return 'Ingresa un correo electrónico válido';
                          }
                          // Agrega más validaciones según tus requisitos
                          return null;
                        },
                        // formPropety: 'firts_name',
                        // formValues: formValues
                      ),
                      const SizedBox(height: 40),
                      const UserInput2Field(
                        icon: Icons.person_2_outlined,
                        text: 'Usuario',
                      ),
                      const SizedBox(height: 2),
                      CustomInputField(
                        // labelText: 'Nombre',
                        hintText: 'Confirma tu correo electronico',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          //que no este vacio
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu confirmacion de correo';
                          }
                          //que sea un correo
                          // if (!value.contains('@')) {
                          //   return 'Ingresa un correo electrónico válido';
                          // }
                          if (value != correo) {
                            return 'Los correos no coinciden';
                          }
                          return null;
                        },
                        // formPropety: 'firts_name',
                        // formValues: formValues
                      ),
                      const SizedBox(height: 30),
                      // CustomButton(
                      //    text: 'Ingresar',
                      //      onPressed: () {
                      //       Navigator.pushNamed(context, 'login2');
                      //     }),
                    ],
                  ),
                ),
              ),
            ),
          ),

          CustomElevatedButton(
            buttonText: 'Ingresar',
            onPressed: () {
              Navigator.pushNamed(context, 'login2');
            },
            top: 820,
            right: 84,
          ),
        ],
      ),
    );
  }
}
