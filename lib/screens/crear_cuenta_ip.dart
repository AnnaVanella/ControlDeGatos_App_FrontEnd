import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class CrearCuentaIpScreen extends StatelessWidget {
  const CrearCuentaIpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  child: Form(
                    key: myFormKey,
                    child: Column(
                      children: [
                        const TextoLoginScreen(
                          texto:
                              '¡Bienvenido a tu gestor de gastos personalizado para tus vacaciones!',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const TextoDes2Screen(
                          texto:
                              'Por favor, proporciona la información requerida para crear tu cuenta.',
                          leftPadding: 0.1,
                          rightPadding: 0.1,
                          topPadding: 0.32,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          'Informacion Personal',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFFFFFFF),
                              fontFamily: 'Montserrat'),
                        ),
                        const UserInput2Field(
                          icon: Icons.person_pin,
                          text: 'Nombre Completo',
                        ),
                        const SizedBox(height: 2),
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
                        const SizedBox(height: 6),
                        const UserInput2Field(
                          icon: Icons.calendar_month,
                          text: 'Fecha de nacimiento',
                        ),
                        const SizedBox(height: 2),
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

              CustomElevatedButton(
                buttonText: 'Comenzar',
                onPressed: () {
                  // Validar el formulario
                  // Verificar si currentState no es nulo antes de llamar a validate()
                  if (myFormKey.currentState != null &&
                      myFormKey.currentState!.validate()) {
                    // Si el formulario es válido, navegar a la siguiente pantalla
                    Navigator.pushNamed(context, 'login2');
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
