// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_hegga_controldegastos_frontend/theme/app_theme.dart';
// import 'package:flutter_hegga_controldegastos_frontend/ui/input_decorations.dart';
// import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Fondo de la imagen
//           Container(
//             height: double.infinity,
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(
//                     'assets/login.jpg'), // Cambiar la posicion de la imagen
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           // Rectángulo superpuesto
//           Positioned.fill(
//             child: Rectangulo(),
//           ),

//           CustomTextButton(
//               icon: Icons.add, buttonText: 'Crear Usuario', onPressed: () {}),
//           // Contenido centrado en el rectángulo
//           const TextoLoginScreen(),

//           const TextoDes1Screen(),

//           SingleChildScrollView(
//             child: Container(
//               child: Padding(
//                 padding: const EdgeInsets.only(
//                     top: 400, bottom: 150, right: 36, left: 36),
//                 child: Column(
//                   children: [
//                     UserInputField(),
//                     SizedBox(height: 8),
//                     TextField(
//                       // controller: Null,
//                       autofocus: false,
//                       keyboardType: TextInputType.emailAddress,
//                       decoration: InputDecorations.loginInputDecoration(),
//                     ),
//                     SizedBox(height: 24),
//                     UserInputField(),
//                     SizedBox(height: 8),
//                     TextFormField(
//                       autofocus: false,
//                       keyboardType: TextInputType.visiblePassword,
//                       decoration: InputDecorations2.loginInputDecoration(),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
