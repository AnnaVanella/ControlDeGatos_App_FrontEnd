import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/custom_container.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class CrearCuentaIpScreen extends StatelessWidget {
  const CrearCuentaIpScreen({Key? key}) : super(key: key);

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
                child: Image.asset(
                  'assets/image1.jpg',
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  height: 310.0,
                ),
              ),

              Positioned(
                top: 242,
                // bottom: 0,
                left: 0,
                right: 0,
                child: CustomContainer(
                  child: Column(
                    key: myFormKey,
                    children: const [
                      Text('Informacion Personal'),
                      TextoLoginScreen(
                        texto:
                            '¡Bienvenido a tu gestor de gastos personalizado para tus vacaciones!',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextoDes2Screen(
                        texto:
                            'Por favor, proporciona la información requerida para crear tu cuenta.',
                        leftPadding: 0.1,
                        rightPadding: 0.1,
                        topPadding: 0.32,
                      ),
                      UserInput2Field(
                        icon: Icons.person_pin,
                        text: 'Nombre Completo',
                      ),
                      SizedBox(height: 2),
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

              CustomElevatedButton(
                buttonText: 'Comenzar',
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
