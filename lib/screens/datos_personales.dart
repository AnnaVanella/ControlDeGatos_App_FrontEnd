import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class DatosPersonalesScreen extends StatelessWidget {
  const DatosPersonalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
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
                      SizedBox(
                        height: 10.0,
                      ),
                      TextoDes2Screen(
                        texto: 'Aquí puedes cambiar tus datos personales',
                        leftPadding: 0.43,
                        rightPadding: 0.44,
                        topPadding: 0.32,
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      UserInput2Field(
                        icon: Icons.person_pin,
                        text: 'Nombre Completo',
                      ),
                      SizedBox(height: 10),
                      CustomInputField(
                        hintText: 'Escribe tu nombre y apellidos',
                      ),
                      SizedBox(height: 6),
                      UserInput2Field(
                        icon: Icons.calendar_month,
                        text: 'Fecha de nacimiento',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Ingresa tu fecha de nacimiento',
                      ),
                      SizedBox(height: 6),
                      UserInput2Field(
                        icon: Icons.pin_drop_outlined,
                        text: 'Dirección',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Ingresa tu dirección',
                      ),
                      SizedBox(height: 6),
                      UserInput2Field(
                        icon: Icons.call,
                        text: 'Numero de contacto',
                      ),
                      SizedBox(height: 2),
                      CustomInputField(
                        hintText: 'Ingresa tu numero de contacto',
                      ),
                    ],
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
