import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

//Titulo con icono
class IconoTexto extends StatelessWidget {
  final String? labelText;
  final IconData? icon;
  final String? text;
  final Color? iconColor;
  final double? iconSize;
  final Color? textColor;
  final double? textSize;

  const IconoTexto({
    Key? key,
    this.labelText,
    this.icon,
    this.text,
    this.iconColor,
    this.iconSize,
    this.textColor,
    this.textSize,
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
                color: iconColor ?? Color(0xFF000000), // Color predeterminado
                size: iconSize ?? 24, // Tamaño predeterminado
              ),
              const SizedBox(width: 8),
              Text(
                text ?? '', // Si el texto es nulo, mostrar una cadena vacía
                style: TextStyle(
                  color: textColor ?? Color(0xFF000000), // Color predeterminado
                  fontFamily: 'Montserrat',
                  fontSize: textSize ?? 14, // Tamaño predeterminado
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

//Subtitulo
class SubtextoScreen extends StatelessWidget {
  final String texto;
  final double leftPadding; // Nuevo parámetro para el padding izquierdo
  final double rightPadding; // Nuevo parámetro para el padding derecho
  final double topPadding; // Nuevo parámetro para el padding superior

  const SubtextoScreen({
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
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 18,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000),
      ),
    );
  }
}

//Widget de Linea:
class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color(0xFF46494E) // Color de la línea
      ..strokeWidth = 2 // Ancho de la línea
      ..strokeCap = StrokeCap.round;

    final Offset start = Offset(0, size.height / 2);
    final Offset end = Offset(size.width, size.height / 2);

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
