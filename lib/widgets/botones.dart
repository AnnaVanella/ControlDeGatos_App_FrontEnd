import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final double top;
  final double right;
  final double left;
  final double bottom;

  const CustomElevatedButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.top = 20.0,
    this.right = 20.0,
    this.left = 20.0,
    this.bottom = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // padding: EdgeInsets.symmetric(horizontal: 126, vertical: 2),
          fixedSize: Size(322, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26),
            side: BorderSide(color: Color(0xFF107B4D), width: 1),
          ),
          backgroundColor: Color(0xFF1ACD81),
          shadowColor: Colors.black.withOpacity(0.25),
          elevation: 4,
        ),
        onPressed: onPressed,
        child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.white, // Cambia este color según tus necesidades
              fontSize: 18,
              fontFamily:
                  'Montserrat', // Ajusta el tamaño del texto según tus necesidades
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
