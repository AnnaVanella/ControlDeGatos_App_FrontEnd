import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/service/crearUser.dart';
import 'package:flutter_hegga_controldegastos_frontend/utils.dart';

class CrearUsuarioWidget extends StatefulWidget {
  const CrearUsuarioWidget({super.key});

  @override
  CrearCuentaScreen createState() => CrearCuentaScreen();
}

class CrearCuentaScreen extends State<CrearUsuarioWidget> {
  final _usernamecrearController = TextEditingController();
  final _passworcreardController = TextEditingController();
  final _confirmpassController = TextEditingController();
  final userService = CrearUserApiService();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String? password;

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
                  'assets/image1.jpg',
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 310.0,
                ),
              ),

              Positioned(
                top: 242,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Form(
                    key: myFormKey,
                    child: Column(
                      children: [
                        const TextoLoginScreen(
                          texto:
                              '¡Bienvenido a tu gestor de gastos personalizado para tus vacaciones!',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const TextoDes2Screen(
                          texto:
                              'Por favor, proporciona la información requerida para crear tu cuenta.',
                          leftPadding: 0.1,
                          rightPadding: 0.1,
                          topPadding: 0.32,
                        ),
                        const UserInput2Field(
                          icon: Icons.person_2_outlined,
                          text: 'Usuario',
                        ),
                        const SizedBox(height: 2),
                        CustomInputField(
                          controller: _usernamecrearController,
                          hintText: 'Escribe tu correo electronico',
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
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
                        ),
                        const SizedBox(height: 6),
                        const UserInput2Field(
                          icon: Icons.lock_clock_outlined,
                          text: 'Contraseña',
                        ),
                        const SizedBox(height: 2),
                        CustomInputField(
                          hintText: 'Ingresa tu contraseña',
                          obscureText: true,
                          suffixIcon: Icons.visibility,
                          validator: (value) {
                            // Validación de la contraseña
                            password = value;
                            if (value == null || value.isEmpty) {
                              return 'La contraseña es requerida';
                            }
                            if (value.length < 8) {
                              return 'La contraseña debe tener al menos 8 caracteres';
                            }
                            if (!value.contains(RegExp(r'[A-Z]'))) {
                              return 'La contraseña debe incluir al menos una mayúscula';
                            }
                            if (!value.contains(RegExp(r'[0-9]'))) {
                              return 'La contraseña debe incluir al menos un número';
                            }
                            if (!value
                                .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                              return 'La contraseña debe incluir al menos un carácter especial';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 6),
                        const UserInput2Field(
                          icon: Icons.lock_clock_outlined,
                          text: 'Confirmar Contraseña',
                        ),
                        const SizedBox(height: 2),
                        CustomInputField(
                          hintText: 'Confirma tu contraseña',
                          obscureText: true,
                          suffixIcon: Icons.visibility,
                          validator: (value) {
                            // Validación de la confirmación de la contraseña
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingresa tu confirmacion de contraseña';
                            }
                            if (value != password) {
                              return 'Las contraseñas no coinciden';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 18),
                        const Row(
                          children: [
                            Text(
                              'La contraseña debe incluir:',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'Montserrat'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.check_outlined,
                              color: Color(0xFFFFFFFF),
                              size: 16,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Una mayuscula',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.check_outlined,
                              color: Color(0xFFE6B323),
                              size: 16,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Un numero',
                              style: TextStyle(
                                color: Color(0xFFE6B323),
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        const Row(
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.close_outlined,
                              color: Color(0xFF820404),
                              size: 16,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Un caracter especial',
                              style: TextStyle(
                                color: Color(0xFF820404),
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                height: 1.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              CustomElevatedButton(
                buttonText: 'Siguiente',
                onPressed: () {
                  // Validar el formulario
                  if (myFormKey.currentState != null &&
                      myFormKey.currentState!.validate()) {
                    // Si el formulario es válido, navegar a la siguiente pantalla
                    Navigator.pushNamed(context, 'crear_cuenta_ip');
                  }
                },
                top: MediaQuery.of(context).size.height * 0.9,
                right: 84,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class CrearCuentaScreen extends StatelessWidget {
//   const CrearCuentaScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Stack(
//         children: [
//           Image.asset(
//             'assets/image1.jpg',
//             alignment: Alignment.topCenter,
//             width: double.infinity,
//             height: 350.0,
//           ),
//         ],
//       ),
//     ));
//   }
// }

// CODIGO DE PRUEBA

// class CrearCuentaScreen extends StatelessWidget {
//   const CrearCuentaScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Image.asset(
//               'assets/image1.jpg',
//               alignment: Alignment.topCenter,
//               width: 800,
//               height: 350.0,
//             ),
//             CustomContainer(
//               child: Column(
//                 key: myFormKey,
//                 children: const [

//                 ],
//               ),
//             ),
//             const Texto1crearScreen(),
//             const TextoDes2Screen(
//               texto:
//                   'Por favor, proporciona la información requerida para crear tu cuenta.',
//               leftPadding: 0.1,
//               rightPadding: 0.1,
//               topPadding: 0.32,
//             ),
//             // Column(children: [
//             //   UserInput2Field(
//             //     icon: Icons.person_2_outlined,
//             //     text: 'Usuario',
//             //   ),
//             //   SizedBox(height: 2),
//             //   CustomInputField(
//             //     hintText: 'Escribe tu correo electronico',
//             //     keyboardType: TextInputType.emailAddress,
//             //   ),
//             //   SizedBox(height: 6),
//             //   UserInput2Field(
//             //     icon: Icons.lock_clock_outlined,
//             //     text: 'Contraseña',
//             //   ),
//             //   SizedBox(height: 2),
//             //   CustomInputField(
//             //     hintText: 'Ingresa tu contraseña',
//             //     obscureText: true,
//             //     suffixIcon: Icons.visibility,
//             //   ),
//             // ]
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// ESTE SERA EL OTRO CODIGO DE PRUEBA:

