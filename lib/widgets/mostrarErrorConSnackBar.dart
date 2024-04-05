// ignore: file_names
import 'package:flutter/material.dart';

void mostrarErrorConSnackBar(BuildContext context, String mensaje) {
  final snackBar = SnackBar(
    content: Text(mensaje),
    action: SnackBarAction(
      label: 'Cerrar',
      onPressed: () {
        // Código opcional para ejecutar cuando se presiona el botón Cerrar.
      },
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
