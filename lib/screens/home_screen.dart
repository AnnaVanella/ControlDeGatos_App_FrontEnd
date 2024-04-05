import 'package:flutter/cupertino.dart';
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
            const DrawerHeader(
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
            const SizedBox(height: 8),

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

            const SizedBox(
              height: 18,
            ),
            // Aquí agregamos la línea
            CustomPaint(
              size: Size(double.infinity, 2),
              painter: LinePainter(),
            ),

            const SizedBox(
              height: 10,
            ),

            CustomTextButton(
                icon: Icons.key_outlined,
                buttonText: 'Modificar datos',
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, 'cambiar_datos');
                }),

            CustomTextButton(
                icon: Icons.edit,
                buttonText: 'Cambiar contraseña',
                textColor: Colors.black,
                onPressed: () {
                  Navigator.pushNamed(context, 'cambiar_contra');
                }),

            //aqui las opciones del menu
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              // Fondo de la imagen
              Container(
                width: double.infinity,
                height: 492.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/home1.jpg'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.grey.withOpacity(0.3), BlendMode.srcOver),
                  ),
                ),
              ),

              const Positioned(
                top: 440,
                left: 0,
                right: 0,
                child: CustomContainer(
                  color: Color(0xFFE6B323),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
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
                      ColumnTablePanorama(
                        column1Data: [
                          '16:24 pm',
                          '16:13 pm',
                          '16:04 pm',
                          '15:28 pm',
                          '15:47 pm',
                          '14:12 pm',
                          '1:34 pm'
                        ],
                        column2Data: [
                          'Heladeria Crosft',
                          'Zara',
                          'Zara',
                          'Zara',
                          'Yakissbo Mundial',
                          'Wanderlunst bar e cozinha',
                          'Zara,' 'Yakissbo Mundial'
                        ],
                        column3Data: [
                          '02-12-2024',
                          '04-12-2024',
                          '05-12-2024',
                          '05-12-2024',
                          '09-12-2024',
                          '11-12-2024',
                          '11-12-2024',
                          '15-12-2024'
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              //container de los gastos del home
              const Positioned(
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
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: ColumnTableGastos(
                          column1Data: [
                            '16:24 pm',
                            '16:13 pm',
                            '16:04 pm',
                            '15:28 pm',
                            '15:47 pm',
                            '14:12 pm',
                            '1:34 pm'
                          ],
                          column2Data: [
                            'Heladeria Crosft',
                            'Zara',
                            'Zara',
                            'Zara',
                            'Yakissbo Mundial',
                            'Wanderlunst bar e cozinha',
                            'Zara,' 'Yakissbo Mundial'
                          ],
                          column3Data: [
                            '-\$12.000',
                            '-\$61.000',
                            '-\$83.000',
                            '-\$29.300',
                            '-\$10.000',
                            '-\$22.000',
                            '-\$29.300',
                          ],
                        ),
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
                    constraints: const BoxConstraints(
                      maxWidth: 330,
                      maxHeight: 500,
                    ),
                    child: const Text(
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

              const CustomMenuButton(),

              //BOTONES

              Positioned(
                top: 532,
                right: 16,
                child: CustomTextButton(
                  icon: Icons.add,
                  iconSize: 20,
                  iconColor: const Color(0xFF149A61),
                  buttonText: 'Agregar panorama',
                  fontSize: 16,
                  textColor: const Color(0xFF149A61),
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Color(0xFFC8C8C8),
                      context: context,
                      builder: (BuildContext context) {
                        return CustomModalBottomSheet(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Agregar proximo panorama',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 20),
                            const IconoTexto(
                              icon: Icons.access_time,
                              iconColor: Colors.black,
                              text: 'Hora',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe la hora del panorama',
                            ),
                            const SizedBox(height: 10),
                            const IconoTexto(
                              icon: Icons.calendar_month_outlined,
                              iconColor: Colors.black,
                              text: 'Fecha',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe la fecha del panorama',
                            ),
                            const SizedBox(height: 10),
                            const IconoTexto(
                              icon: Icons.mode_of_travel,
                              iconColor: Colors.black,
                              text: 'Panorama',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe el nombre del panorama',
                            ),
                            const SizedBox(height: 40),
                            CustomElevatedButton(
                              buttonText: 'Guardar',
                              onPressed: () {
                                Navigator.pushNamed(context, 'login2');
                              },
                              top: MediaQuery.of(context).size.height * 0.9,
                              right: 84,
                            ),
                          ],
                        )); // Aquí retornas el contenido del modal
                      },
                    );
                  },
                ),
              ),

              Positioned(
                bottom: 118,
                right: 16,
                child: CustomTextButton(
                  icon: Icons.add,
                  iconSize: 20,
                  iconColor: const Color(0xFF149A61),
                  buttonText: 'Agregar cargo',
                  fontSize: 16,
                  textColor: const Color(0xFF149A61),
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Color(0xFFC8C8C8),
                      context: context,
                      builder: (BuildContext context) {
                        return Align(
                          alignment: Alignment.bottomCenter,
                          child: CustomModalBottomSheet(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Agregar nuevo gasto',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: 20),
                              const IconoTexto(
                                icon: Icons.table_rows_outlined,
                                iconColor: Colors.black,
                                text: 'Nombre del gasto',
                              ),
                              const SizedBox(height: 4),
                              const CustomInputField(
                                hintText: 'Escribe el nombre de tu gasto',
                              ),
                              const SizedBox(height: 10),
                              const IconoTexto(
                                icon: Icons.monetization_on_outlined,
                                iconColor: Colors.black,
                                text: 'Valor del gasto',
                              ),
                              const SizedBox(height: 4),
                              const CustomInputField(
                                hintText: 'Escribe el valor de tu gasto',
                              ),
                              const SizedBox(height: 40),
                              CustomElevatedButton(
                                buttonText: 'Guardar',
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login2');
                                },
                                // top: MediaQuery.of(context).size.height * 0.10,
                                // right: 84,
                              ),
                            ],
                          )),
                        ); // Aquí retornas el contenido del modal
                      },
                    );
                  },
                ),
              ),

              const Positioned(
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
