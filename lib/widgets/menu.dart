import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
            width: 16), // Espacio para ajustar el ícono a la izquierda
        IconButton(
          icon: const Icon(
            Icons.menu,
            size: 48,
          ), // Ícono de las tres barras
          onPressed: () {
            // Abre el drawer al hacer clic en el ícono del menú
            Scaffold.of(context).openDrawer();
          },
        ),
      ],
    );
  }
}
