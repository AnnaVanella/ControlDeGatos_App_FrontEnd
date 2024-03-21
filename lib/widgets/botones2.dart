import 'package:flutter/material.dart';

Color _customColor = Color(0xFF149A61);

class IconButtonWithLabel extends StatelessWidget {
  final IconData iconData;
  final String label;
  final VoidCallback onPressed;
  final Color? iconColor; // Nuevo parámetro opcional para el color del icono
  final Color?
      backgroundColor; // Nuevo parámetro opcional para el color de fondo

  IconButtonWithLabel({
    Key? key,
    required this.iconData,
    required this.label,
    required this.onPressed,
    this.iconColor, // Parámetro opcional para el color del icono
    this.backgroundColor, // Parámetro opcional para el color de fondo
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor ??
                Colors
                    .white, // Usar el color de fondo proporcionado o el predeterminado
            border: Border.all(
              color: _customColor, // Color del borde igual al color del icono
              width: 4, // Ancho del borde
            ),
          ),
          padding: EdgeInsets.all(12),
          child: IconButton(
            icon: Icon(iconData),
            color: iconColor ??
                _customColor, // Usar el color del icono proporcionado o el predeterminado
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
  final Color? iconColor;
  final Color? backgroundColor;

  const MyWidget({Key? key, this.iconColor, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWithLabel(
          iconData: Icons.mode_of_travel,
          label: 'Lugares visitados',
          onPressed: () {
            Navigator.pushNamed(context, 'panorama');
          },
          iconColor: Color(0xFF149A61),
          backgroundColor: Colors.white,
        ),
        IconButtonWithLabel(
          iconData: Icons.luggage_sharp,
          label: 'Gastos controlados',
          onPressed: () {
            Navigator.pushNamed(context, 'GatosControlados');
          },
          iconColor: Color(0xFF149A61),
          backgroundColor: Colors.white,
        ),
        IconButtonWithLabel(
          iconData: Icons.flight,
          label: 'Fechas viajes',
          onPressed: () {
            Navigator.pushNamed(context, 'fechasViajes');
          },
          iconColor: Color(0xFF149A61),
          backgroundColor: Colors.white,
        ),
      ],
    );
  }
}

class MyWidget1 extends StatelessWidget {
  final Color? iconColor;
  final Color? backgroundColor;

  const MyWidget1({Key? key, this.iconColor, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWithLabel(
          iconData: Icons.mode_of_travel,
          label: 'Lugares visitados',
          onPressed: () {
            Navigator.pushNamed(context, 'panorama');
          },
          iconColor: Colors.white,
          backgroundColor: Color(0xFF149A61),
        ),
        IconButtonWithLabel(
          iconData: Icons.luggage_sharp,
          label: 'Gastos controlados',
          onPressed: () {
            Navigator.pushNamed(context, 'GatosControlados');
          },
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
        IconButtonWithLabel(
          iconData: Icons.flight,
          label: 'Fechas viajes',
          onPressed: () {
            Navigator.pushNamed(context, 'fechasViajes');
          },
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
      ],
    );
  }
}

class MyWidget2 extends StatelessWidget {
  final Color? iconColor;
  final Color? backgroundColor;

  const MyWidget2({Key? key, this.iconColor, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWithLabel(
          iconData: Icons.mode_of_travel,
          label: 'Lugares visitados',
          onPressed: () {
            Navigator.pushNamed(context, 'panorama');
          },
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
        IconButtonWithLabel(
          iconData: Icons.luggage_sharp,
          label: 'Gastos controlados',
          onPressed: () {
            Navigator.pushNamed(context, 'GatosControlados');
          },
          iconColor: Colors.white,
          backgroundColor: Color(0xFF149A61),
        ),
        IconButtonWithLabel(
          iconData: Icons.flight,
          label: 'Fechas viajes',
          onPressed: () {
            Navigator.pushNamed(context, 'fechasViajes');
          },
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
      ],
    );
  }
}

class MyWidget3 extends StatelessWidget {
  final Color? iconColor;
  final Color? backgroundColor;

  const MyWidget3({Key? key, this.iconColor, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButtonWithLabel(
          iconData: Icons.mode_of_travel,
          label: 'Lugares visitados',
          onPressed: () {
            Navigator.pushNamed(context, 'panorama');
          },
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
        IconButtonWithLabel(
          iconData: Icons.luggage_sharp,
          label: 'Gastos controlados',
          onPressed: () {
            Navigator.pushNamed(context, 'GatosControlados');
          },
          iconColor: iconColor,
          backgroundColor: backgroundColor,
        ),
        IconButtonWithLabel(
          iconData: Icons.flight,
          label: 'Fechas viajes',
          onPressed: () {
            Navigator.pushNamed(context, 'fechasViajes');
          },
          iconColor: Colors.white,
          backgroundColor: Color(0xFF149A61),
        ),
      ],
    );
  }
}
