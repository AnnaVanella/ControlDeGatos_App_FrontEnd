import 'package:flutter/material.dart';

class ColumnTable extends StatelessWidget {
  final List<String> column1Data;
  final List<String> column2Data;
  final List<String> column3Data;

  const ColumnTable({
    Key? key,
    required this.column1Data,
    required this.column2Data,
    required this.column3Data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Encabezados de las columnas
        const Row(
          children: [
            Text(
              'Hoy',
              style: TextStyle(
                color: Colors.black, // Color del texto
                fontSize: 16, // Tamaño del texto
                fontWeight: FontWeight.bold, // Negrita
              ),
            ),
          ],
        ),
        Column(
          children: [
            for (int index = 0; index < column1Data.length; index++)
              Container(
                width: 800, // Ancho de la fila
                height: 40, // Altura de la fila
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildDataCell(column1Data[index], Color(0xFF149A61)),
                    _buildDataCell(column2Data[index], Color(0xFF000000)),
                    _buildDataCell(column3Data[index], Color(0xFFFF6600)),
                  ],
                ),
              ),
          ],
        )
      ],
    );
  }
}

Widget _buildDataCell(String text, Color textColor) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    ),
  );
}





// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     _buildHeaderCell(column1Data[0]),
//     _buildHeaderCell(column2Data[0]),
//     _buildHeaderCell(column3Data[0]),
//   ],
// ),

// Widget _buildHeaderCell(String text) {
//   return Padding(
//     padding: const EdgeInsets.all(8.0),
//     child: Text(
//       text,
//       style: TextStyle(fontWeight: FontWeight.bold),
//     ),
//   );
// }

        // Divider(), // Línea divisora
        // Datos de la tabla
        // ListView.builder(
        //   shrinkWrap: true,
        //   itemCount: column1Data.length - 1,
        //   itemBuilder: (context, index) {
        //     return Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         _buildDataCell(column1Data[index + 1], Color(0xFF149A61)),
        //         _buildDataCell(column2Data[index + 1], Color(0xFF000000)),
        //         _buildDataCell(column3Data[index + 1], Color(0xFFFF6600)),
        //       ],
        //     );
        //   },
        // ),
