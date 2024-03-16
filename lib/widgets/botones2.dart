import 'package:flutter/material.dart';

Color _customColor = Color(0xFF149A61);

class IconButtonWithLabel extends StatelessWidget {
  final IconData iconData;
  final String label;
  final VoidCallback onPressed;
  // final Color iconColor;
  // final Color circleColor;

  IconButtonWithLabel({
    Key? key,
    required this.iconData,
    required this.label,
    required this.onPressed,
    // this.iconColor = Color(0xFF149A61),
    // this.circleColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: _customColor, // Color del borde igual al color del icono
              width: 4, // Ancho del borde
            ),
          ),
          padding: EdgeInsets.all(12),
          child: IconButton(
            icon: Icon(iconData),
            color: Color(0xFF149A61),
            iconSize: 28,
            onPressed: onPressed,
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: 96, // Ancho del contenedor
          child: Text(
            label,
            textAlign: TextAlign.center, // Alineación central del texto
            style: const TextStyle(
              color: Colors.white, // Color del texto
              fontFamily: 'Montserrat',
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              height: 1.0, // Line height normal
            ),
          ),
        ),
      ],
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWithLabel(
          iconData: Icons.mode_of_travel,
          label: 'Lugares visitados',
          onPressed: () {
            // Navega a la pantalla de inicio
            Navigator.pushNamed(context, 'panorama');
          },
        ),
        IconButtonWithLabel(
          iconData: Icons.luggage_sharp,
          label: 'Gastos controlados',
          onPressed: () {
            // Navega a la pantalla de configuración
            Navigator.pushNamed(context, 'GatosControlados');
          },
        ),
        IconButtonWithLabel(
          iconData: Icons.flight,
          label: 'Fechas viajes',
          onPressed: () {
            // Navega a la pantalla de perfil
            Navigator.pushNamed(context, 'fechasViajes');
          },
        ),
      ],
    );
  }
}
