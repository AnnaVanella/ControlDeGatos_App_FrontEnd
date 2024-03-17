import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonText;
  final IconData? icon;
  final double fontSize; // Nuevo parámetro para el tamaño del texto
  final double iconSize; // Nuevo parámetro para el tamaño del icono
  final double height; // Nuevo parámetro para la altura del botón
  final VoidCallback onPressed;
  final Color iconColor; // Nuevo parámetro para el color del icono
  final Color textColor; // Nuevo parámetro para el color del texto

  const CustomTextButton({
    Key? key,
    required this.buttonText,
    this.icon,
    this.fontSize = 18.0, // Valor predeterminado para el tamaño del texto
    this.iconSize = 24.0, // Valor predeterminado para el tamaño del icono
    this.height = 40.0, // Valor predeterminado para la altura del botón
    required this.onPressed,
    this.iconColor = const Color(0xFF1ACD81), // Color predeterminado del icono
    this.textColor = const Color(0xFF1ACD81), // Color predeterminado del texto
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(textColor),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, color: iconColor, size: iconSize),
            const SizedBox(width: 8),
          ],
          Text(
            buttonText,
            style: TextStyle(
              color: textColor,
              fontFamily: 'Montserrat',
              fontSize: fontSize,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
              decorationColor: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
