import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/custom_container.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

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

class CrearCuentaScreen extends StatelessWidget {
  const CrearCuentaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

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
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Column(
                    key: myFormKey,
                    children: const [
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
                      SizedBox(height: 6),
                      UserInput2Field(
                        icon: Icons.lock_clock_outlined,
                        text: 'Confirmar Contraseña',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Confirma tu contraseña',
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                      ),
                    ],
                  ),
                ),
              ),

              CustomElevatedButton(
                buttonText: 'Siguiente',
                onPressed: () {
                  Navigator.pushNamed(context, 'crear_cuenta_ip');
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
