import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/menu.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFFD9D9D9),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.menu,
                    color: Color(0xFF000000),
                    size: 40,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Menú',
                    style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),

            //AQUI VA LA IMAGEN DEL USUARIO
            Positioned(
              top: 10, // Ajusta la posición según sea necesario
              right: MediaQuery.of(context).size.width *
                  0.02, // Centra horizontalmente
              child: const CircularAvatar(
                  assetImagePath: 'assets/avatar.jpg', radius: 70),
            ),
            SizedBox(height: 8),

            //AQUI VA EL NOMBRE DEL USUARIO
            const Text(
              'Mariela Campusano',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
              ),
            ),

            //aqui las opciones del menu
            ListTile(
              title: Text('Opción 1'),
              onTap: () {
                // Manejar la acción de la opción 1
              },
            ),
            ListTile(
              title: Text('Opción 2'),
              onTap: () {
                // Manejar la acción de la opción 2
              },
            ),
            ListTile(
              title: Text('Opción 3'),
              onTap: () {
                // Manejar la acción de la opción 3
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Fondo de la imagen
              Positioned(
                child: Image.asset(
                  'assets/home1.jpg',
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 492.0,
                ),
              ),

              Positioned(
                top: 440,
                left: 0,
                right: 0,
                child: CustomContainer(
                  color: Color(0xFFE6B323),
                  child: Column(
                    children: [
                      IconoTexto(
                        icon: Icons.mode_of_travel,
                        text: 'Proximo panorama',
                        iconColor: Color(0xFF000000),
                        iconSize: 32,
                        textColor: Color(0xFF000000),
                        textSize: 22,
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      SubtextoScreen(
                        texto: 'Aquí puedes ver tu próximo panorama del dia',
                        leftPadding: 0.06,
                        rightPadding: 0.06,
                        topPadding: 0.32,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 720,
                left: 0,
                right: 0,
                child: CustomContainer(
                  color: Colors.white,
                  child: Column(
                    children: [
                      IconoTexto(
                        icon: Icons.luggage_outlined,
                        text: 'Cargar gasto',
                        iconColor: Color(0xFF000000),
                        iconSize: 32,
                        textColor: Color(0xFF000000),
                        textSize: 22,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      SubtextoScreen(
                        texto: 'Aquí puedes ver tus últimos gastos',
                        leftPadding: 0.1,
                        rightPadding: 0.1,
                        topPadding: 0.32,
                      ),
                    ],
                  ),
                ),
              ),

              Positioned(
                top: 70,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    child: const Text(
                      '!Como van las vacaciones! en Argentina',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 270,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    child: Text(
                      'Presupuesto para las vacaciones',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 300,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    child: const Text(
                      '\$ 1.538.000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFC727),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 350,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    child: const Text(
                      'Presupuesto Restante',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 380,
                left: 54,
                right: 54,
                child: Center(
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    child: const Text(
                      '\$ 1.247.000',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFF6600),
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 10,
                right: MediaQuery.of(context).size.width * 0.02,
                child: const CircularAvatar(
                  assetImagePath: 'assets/avatar.jpg',
                  radius: 24,
                ),
              ),

              CustomMenuButton(),

              Positioned(
                top: 546,
                right: 16,
                child: CustomTextButton(
                  icon: Icons.add,
                  iconSize: 20,
                  iconColor: Color(0xFF149A61),
                  buttonText: 'Agregar panorama',
                  fontSize: 16,
                  textColor: Color(0xFF149A61),
                  onPressed: () {
                    Navigator.pushNamed(context, 'recuperar_contra');
                  },
                ),
              ),

              Positioned(
                bottom: 110,
                right: 16,
                child: CustomTextButton(
                  icon: Icons.add,
                  iconSize: 20,
                  iconColor: Color(0xFF149A61),
                  buttonText: 'Agregar cargo',
                  fontSize: 16,
                  textColor: Color(0xFF149A61),
                  onPressed: () {
                    Navigator.pushNamed(context, 'recuperar_contra');
                  },
                ),
              ),

              Positioned(
                top: 150,
                left: 0,
                right: 0,
                child: MyWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
