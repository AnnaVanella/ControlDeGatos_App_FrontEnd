import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration loginInputDecoration() {
    return InputDecoration(
      hintText: 'Escribe tu correo electrónico',
      hintStyle: TextStyle(color: Color(0xFF000000)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: Color(0xFFBF951D), //
          width: 40.0,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      filled: true,
      fillColor: Colors.white, //
    );
  }
}

class InputDecorations2 {
  static InputDecoration loginInputDecoration() {
    return InputDecoration(
      hintText: 'Ingresa tu contraseña',
      hintStyle: const TextStyle(color: Color(0xFF000000)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: Color(0xFFBF951D), //
          width: 40.0,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      filled: true,
      fillColor: Colors.white, //
    );
  }
}

class UserInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.person_outline_outlined,
                color: Color(0xFFBF951D),
              ),
              SizedBox(width: 8),
              Text(
                'Usuario',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                  height: 1.0, // Esto es equivalente a line-height: normal
                ),
              ),
            ],
          ),
          // StyledTextField(
          //   inputDecoration: InputDecorations.loginInputDecoration(),
          // ),
        ],
      ),
    );
  }
}
