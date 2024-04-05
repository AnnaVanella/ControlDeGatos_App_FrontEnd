import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class DatosPersonalesScreen extends StatelessWidget {
  const DatosPersonalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

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
              Positioned(
                // left: 0,
                // top: 0,
                child: Container(
                  color: Color(0xFF149A61),
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  height: 310.0,
                ),
              ),

              Positioned(
                top: 150,
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Form(
                    key: myFormKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 8),
                            Icon(
                              Icons.lock_person_outlined,
                              color: Color(0xFFFFC727),
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Datos personales',
                              style: TextStyle(
                                color: Color(0xFFFFC727),
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const TextoDes2Screen(
                          texto: 'Aquí puedes cambiar tus datos personales',
                          leftPadding: 0.43,
                          rightPadding: 0.44,
                          topPadding: 0.32,
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        const UserInput2Field(
                          icon: Icons.person_pin,
                          text: 'Nombre Completo',
                        ),
                        SizedBox(height: 10),
                        CustomInputField(
                          hintText: 'Escribe tu nombre y apellidos',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingresa tu nombre y apellidos';
                            }
                            // Expresión regular que valida que solo contiene letras y espacios
                            if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                              return 'Ingresa solo letras';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 6),
                        UserInput2Field(
                          icon: Icons.calendar_month,
                          text: 'Fecha de nacimiento',
                        ),
                        SizedBox(height: 2),
                        CustomInputField(
                          hintText: 'Ingresa tu fecha de nacimiento',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingresa tu fecha de nacimiento';
                            }
                            if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Ingresa solo números';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 6),
                        const UserInput2Field(
                          icon: Icons.pin_drop_outlined,
                          text: 'Dirección',
                        ),
                        const SizedBox(height: 2),
                        CustomInputField(
                          hintText: 'Ingresa tu dirección',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingresa tu dirección';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 6),
                        const UserInput2Field(
                          icon: Icons.call,
                          text: 'Numero de contacto',
                        ),
                        const SizedBox(height: 2),
                        CustomInputField(
                          hintText: 'Ingresa tu numero de contacto',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingresa tu número de contacto';
                            }
                            // Expresión regular que valida que solo contiene números
                            if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                              return 'Ingresa solo números';
                            }
                            // Agrega más validaciones según tus requisitos
                            return null;
                          },
                        ),
                      ],
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

              // CircularAvatar
              Positioned(
                top: 40, // Ajusta la posición según sea necesario
                left: MediaQuery.of(context).size.width / 2 -
                    96, // Centra horizontalmente
                child:
                    const CircularAvatar(assetImagePath: 'assets/avatar.jpg'),
              ),

              CustomElevatedButton(
                buttonText: 'Guardar',
                onPressed: () {
                  if (myFormKey.currentState != null &&
                      myFormKey.currentState!.validate()) {
                    // Si el formulario es válido, navegar a la siguiente pantalla
                    Navigator.pushNamed(context, 'home');
                  }
                },
                top: MediaQuery.of(context).size.height * 0.9,
                right: 84,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
