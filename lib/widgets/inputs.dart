import 'package:flutter/material.dart';

//Estos son los inputs que estoy utilizando ahora en el login2
class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;

//AÑADIR DESPUES LAS VALIDACIONES Y PROPIEDADES
  // final String formPropety;
  // final Map<String, String> formValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.controller,
    // Actualizar el constructor para incluir el parámetro validator
    //ACTIVAR CUANDO SE AÑADA
    // required this.formPropety,
    // required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    IconData? icon;
    return TextFormField(
        autofocus: false,
        // initialValue: '',
        textCapitalization: TextCapitalization.words,
        keyboardType: keyboardType,
        obscureText: obscureText,
        // onChanged: (value) {
        //   formValues[formPropety] = value;
        // },
        validator: validator,
        // (value) {
        //   if (value == null) return 'este campo es requerido';
        //   // return value.length < 3 ? 'Minimo 3 letras' : null;
        // },
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Color(0xFF000000)),
          labelText: labelText,
          helperText: helperText,
          suffixIcon: suffixIcon == null ? null : Icon(icon),
          suffixIconColor: Colors.grey,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: const Color(0xFFFFC727), // Color del borde
              width: 2.0, // Grosor del borde
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          filled: true,
          fillColor: Colors.white,

          // icon: icon == null ? null : Icon(icon),
          // counterText: '3 Caracteres'
          // prefix: Icon(Icons.verified_user_outlined)
          // focusedBorder: OutlineInputBorder(
          //   borderSide: BorderSide(
          //     color: Colors.green
          //   )
          // ),

          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.only(
          //         bottomLeft: Radius.circular(10),
          //         topLeft: Radius.circular(10),
          //         topRight: Radius.circular(10))
          //
          //
        ));
  }
}

//Esto solo es el texto y el icono que va arriba de los imputs :))
class UserInput2Field extends StatelessWidget {
  final String? labelText;
  final IconData? icon;
  final String? text;

  const UserInput2Field({
    Key? key,
    this.labelText,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(width: 8),
              Icon(
                icon,
                color: Color(0xFFBF951D),
              ),
              const SizedBox(width: 8),
              Text(
                text ?? '', // Si el texto es nulo, mostrar una cadena vacía
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// class UserInput2Field extends StatelessWidget {
//   final String? labelText;
//   final IconData? icon;
//   final Text? text;

//   const UserInput2Field({
//     super.key,
//     this.labelText,
//     this.icon,
//     this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 12),
//       child: const Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               SizedBox(width: 8),
//               Text(
//                 'Usuario',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontFamily: 'Montserrat',
//                   fontSize: 14,
//                   fontStyle: FontStyle.normal,
//                   fontWeight: FontWeight.w600,
//                   height: 1.0, // Esto es equivalente a line-height: normal
//                 ),
//               ),
//             ],
//           ),
//           // StyledTextField(
//           //   inputDecoration: InputDecorations.loginInputDecoration(),
//           // ),
//         ],
//       ),
//     );
//   }
// }
