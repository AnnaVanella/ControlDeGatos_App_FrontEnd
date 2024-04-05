import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class FechasViajesScreen extends StatelessWidget {
  const FechasViajesScreen({super.key});
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
// Container(
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(
//           color: Colors.black,
//           width: 567,
//         ),
//       ),
//       child: CircleAvatar(
//         // radius: radius -
//         //     borderWidth, // Resta el ancho del borde del radio del avatar
//        assetImagePath: 'assets/avatar.jpg',
//       ),
//     );

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

              Positioned(
                top: 350,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    CustomContainer(
                      color: Colors.white,
                      child: Column(
                        children: [
                          const IconoTexto(
                            icon: Icons.flight,
                            text: 'Fechas del viaje',
                            iconColor: Color(0xFF149A61),
                            iconSize: 36,
                            textColor: Color(0xFF149A61),
                            textSize: 28,
                          ),
                          const SizedBox(
                            height: 1.0,
                          ),
                          const SubtextoScreen(
                            texto: 'Aquí puedes ver tus viajes programados:',
                            leftPadding: 0.01,
                            rightPadding: 0.01,
                            topPadding: 0.32,
                          ),
                          const Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Proximo viaje",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),

                          //TABLAS DE VIAJES

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      // border: Border.all(color: Colors.black),
                                      color: Color(0xFFFFF7DF)),
                                  child: Column(
                                    children: [
                                      Table(
                                        children: const [
                                          TableRow(
                                            children: [
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "Proximo Destino:",
                                                icon: Icons.flight,
                                                iconColor: Color(0xFF149A61),
                                              )),
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "Argentina",
                                                textSize: 18,
                                              )),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: IconoTexto(
                                                  text: "Fecha del viaje:",
                                                  icon: Icons.calendar_month,
                                                  iconColor: Color(0xFF149A61),
                                                ),
                                              ),
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "24/03/2024",
                                                textSize: 18,
                                              )),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: IconoTexto(
                                                  text: "Fecha de regreso:",
                                                  icon: Icons.calendar_today,
                                                  iconColor: Color(0xFF149A61),
                                                ),
                                              ),
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "10/04/2024",
                                                textSize: 18,
                                              )),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(322, 48),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(26),
                                            side: const BorderSide(
                                                color: Color(0xFF107B4D),
                                                width: 1),
                                          ),
                                          backgroundColor: Color(0xFF1ACD81),
                                          shadowColor:
                                              Colors.black.withOpacity(0.25),
                                          elevation: 4,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, 'home');
                                        },
                                        child: const Text(
                                          'Comenzar vacaciones',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 10),

                          //TABLA DE VIAJES2

                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      // border: Border.all(color: Colors.black),
                                      color: Color(0xFFFFF7DF)),
                                  child: Column(
                                    children: [
                                      Table(
                                        children: const [
                                          TableRow(
                                            children: [
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "Proximo Destino:",
                                                icon: Icons.flight,
                                                iconColor: Color(0xFF149A61),
                                              )),
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "Mexico",
                                                textSize: 18,
                                              )),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: IconoTexto(
                                                  text: "Fecha del viaje:",
                                                  icon: Icons.calendar_month,
                                                  iconColor: Color(0xFF149A61),
                                                ),
                                              ),
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "05/05/2024",
                                                textSize: 18,
                                              )),
                                            ],
                                          ),
                                          TableRow(
                                            children: [
                                              TableCell(
                                                child: IconoTexto(
                                                  text: "Fecha de regreso:",
                                                  icon: Icons.calendar_today,
                                                  iconColor: Color(0xFF149A61),
                                                ),
                                              ),
                                              TableCell(
                                                  child: IconoTexto(
                                                text: "22/05/2024",
                                                textSize: 18,
                                              )),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(322, 48),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(26),
                                            side: const BorderSide(
                                                color: Color(0xFF107B4D),
                                                width: 1),
                                          ),
                                          backgroundColor: Color(0xFF1ACD81),
                                          shadowColor:
                                              Colors.black.withOpacity(0.25),
                                          elevation: 4,
                                        ),
                                        onPressed: () {
                                          Navigator.pushNamed(context, 'home');
                                        },
                                        child: const Text(
                                          'Comenzar vacaciones',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
                    // Ancho máximo del texto
                    child: const Text(
                      '!Como van las vacaciones!',
                      textAlign: TextAlign.center, // Alinear el texto al centro
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

              //AVATAR A LA DERECHA
              Positioned(
                top: 10, // Ajusta la posición según sea necesario
                right: MediaQuery.of(context).size.width *
                    0.02, // Centra horizontalmente
                child: const CircularAvatar(
                  assetImagePath: 'assets/avatar.jpg',
                  radius: 24,
                ),
              ),

              //Icono del menu
              const CustomMenuButton(),

              //Boton para agregar nueva fecha del viaje
              Positioned(
                top: 270,
                right: 54.0,
                left: 54.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(322, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                      side: BorderSide(color: Color(0xFFBF951D), width: 1),
                    ),
                    backgroundColor: Color(0xFFFFC727),
                    shadowColor: Colors.black.withOpacity(0.25),
                    elevation: 4,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: const Color(0xFFC8C8C8),
                      context: context,
                      builder: (BuildContext context) {
                        return CustomModalBottomSheet(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Agregar próxima fecha',
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black),
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 20),
                            const IconoTexto(
                              icon: Icons.flight,
                              iconColor: Colors.black,
                              text: 'Destino',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe el nombre de tu destino',
                            ),
                            const SizedBox(height: 10),
                            const IconoTexto(
                              icon: Icons.calendar_month_outlined,
                              iconColor: Colors.black,
                              text: 'Fecha del viaje',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe la fecha del viaje',
                            ),
                            const SizedBox(height: 10),
                            const IconoTexto(
                              icon: Icons.calendar_today,
                              iconColor: Colors.black,
                              text: 'Fecha del regreso',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe la fecha del regreso',
                            ),
                            const SizedBox(height: 10),
                            const IconoTexto(
                              icon: Icons.monetization_on_outlined,
                              iconColor: Colors.black,
                              text: 'Presupuesto para el viaje',
                            ),
                            const SizedBox(height: 4),
                            const CustomInputField(
                              hintText: 'Escribe el presupuesto para el viaje',
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
                  child: const Text(
                    'Agregar nuevo viaje',
                    style: TextStyle(
                        color: Color(
                            0xFF000000), // Cambia este color según tus necesidades
                        fontSize: 18,
                        fontFamily:
                            'Montserrat', // Ajusta el tamaño del texto según tus necesidades
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              //BOTONES DEL HOME
              const Positioned(
                top: 130,
                left: 0,
                right: 0,
                child: MyWidget3(),
              ),
            ], // Aquí se cierra el children del Stack
          ),
        ),
      ),
    );
  }
}
