import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class CambiarContraScreen extends StatelessWidget {
  const CambiarContraScreen({Key? key}) : super(key: key);

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
                  child: Column(
                    key: myFormKey,
                    children: const [
                      SizedBox(
                        height: 100,
                      ),
                      Row(
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
                            'Contraseña',
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
                      SizedBox(
                        height: 10.0,
                      ),
                      TextoDes2Screen(
                        texto:
                            'Para cambiar tu contraseña debes ingresar primero tu contraseña actual y luego tu nuevo contraseña.',
                        leftPadding: 0.43,
                        rightPadding: 0.44,
                        topPadding: 0.32,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contraseña actual',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF),
                                fontFamily: 'Montserrat'),
                          ),
                        ],
                      ),
                      UserInput2Field(
                        icon: Icons.lock_clock_outlined,
                        text: 'Contraseña',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Escribe tu contraseña actual',
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Contraseña nueva',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF000000),
                                fontFamily: 'Montserrat'),
                          ),
                        ],
                      ),
                      UserInput2Field(
                        icon: Icons.lock_clock_outlined,
                        text: 'Contraseña',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Escribe tu nueva contraseña',
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      UserInput2Field(
                        icon: Icons.lock_clock_outlined,
                        text: 'Contraseña',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Confirma tu nueva contraseña',
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),

              //Avatar a la derecha
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
                buttonText: 'Cambiar Contraseña',
                onPressed: () {
                  Navigator.pushNamed(context, 'login2');
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
