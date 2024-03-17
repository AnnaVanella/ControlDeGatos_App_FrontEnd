import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  const CustomMenuButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 16), // Espacio para ajustar el ícono a la izquierda
        IconButton(
          icon: Icon(
            Icons.menu,
            size: 40,
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


// class CustomDrawer extends StatelessWidget {
//   const CustomDrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             decoration: BoxDecoration(
//               color: Colors.blue,
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 IconButton(
//                   icon: Icon(Icons.menu, color: Colors.white, size: 40),
//                   onPressed: () {
//                     Navigator.pop(context); // Cerrar el Drawer
//                   },
//                 ),
//                 Text(
//                   'Menu',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ],
//             ),
//           ),
//           ListTile(
//             title: Text('Home'),
//             onTap: () {
//               Navigator.pop(context); // Cerrar el Drawer
//               Navigator.pushReplacementNamed(
//                   context, '/home'); // Navegar a la pantalla Home
//             },
//           ),
//           ListTile(
//             title: Text('Opción 1'),
//             onTap: () {
//               // Implementar la lógica para la opción 1
//             },
//           ),
//           ListTile(
//             title: Text('Opción 2'),
//             onTap: () {
//               // Implementar la lógica para la opción 2
//             },
//           ),
//           ListTile(
//             title: Text('Cerrar'),
//             onTap: () {
//               Navigator.pop(context); // Cerrar el Drawer
//             },
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: const CircularAvatar(assetImagePath: 'assets/avatar.jpg'),
//           ),
//           SizedBox(height: 20),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: CustomTextButton(
//               buttonText: 'Botón 1',
//               onPressed: () {
//                 // Implementar la lógica para el botón 1
//               },
//             ),
//           ),
//           SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: CustomTextButton(
//               buttonText: 'Botón 2',
//               onPressed: () {
//                 // Implementar la lógica para el botón 2
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
