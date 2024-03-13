import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hegga_controldegastos_frontend/theme/app_theme.dart';

class TextoLoginScreen extends StatelessWidget {
  final String texto;
  const TextoLoginScreen({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: Color(0xFFFFC727),
        fontFamily: 'Montserrat',
        fontSize: 22,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

class TextoDes2Screen extends StatelessWidget {
  final String texto;
  final double leftPadding; // Nuevo parámetro para el padding izquierdo
  final double rightPadding; // Nuevo parámetro para el padding derecho
  final double topPadding; // Nuevo parámetro para el padding superior

  const TextoDes2Screen({
    Key? key,
    required this.texto,
    this.leftPadding = 0.06,
    this.rightPadding = 0.06,
    this.topPadding = 0.30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        color: Color(0xFFFFFFFF),
      ),
    );
  }
}

// class TextoDes1Screen extends StatelessWidget {
//   const TextoDes1Screen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Column(
//       children: [
//         Container(
//             child: SizedBox(
//           child: Column(
//             children: [
//               Center(
//                   child: Padding(
//                 padding: EdgeInsets.only(
//                     left: size.width * 0.06,
//                     right: size.width * 0.06,
//                     top: size.height * 0.30),
//                 child: const Text(
//                   'Recarga tus energías, desconéctate de la rutina y construye recuerdos inolvidables en tus vacaciones.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontFamily: 'Montserrat',
//                     fontSize: 18,
//                     fontStyle: FontStyle.normal,
//                     fontWeight: FontWeight.w400,
//                     color: Color(0xFFFFFFFF), // Color blanco
//                   ),
//                 ),
//               ))
//             ],
//           ),
//         ))
//       ],
//     );
//   }
// }



// class Texto1crearScreen extends StatelessWidget {
//   final String texto;
//   const Texto1crearScreen({super.key, required this.texto});

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Text(
//       '¡Bienvenido a tu gestor de gastos personalizado para tus vacaciones!',
//       textAlign: TextAlign.center,
//       style: TextStyle(
//         color: Color(0xFFFFC727),
//         fontFamily: 'Montserrat',
//         fontSize: 22,
//         fontStyle: FontStyle.normal,
//         fontWeight: FontWeight.w600,
//       ),
//     );
//   }
// }
