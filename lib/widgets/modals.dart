import 'package:flutter/material.dart';

class CustomModalBottomSheet extends StatelessWidget {
  final Widget child;

  const CustomModalBottomSheet({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double modalHeight = MediaQuery.of(context).size.height * 0.9;

    return Container(
      width: 530,
      height: 600,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), // Agrega el borde redondeado
        color: const Color(0xFFC8C8C8), // Cambia el color de fondo
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              child,
            ],
          ),
        ),
      ),
    );
  }
}
