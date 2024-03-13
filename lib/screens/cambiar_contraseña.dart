import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/widgets/widgets.dart';

class CambiarContraScreen extends StatelessWidget {
  const CambiarContraScreen({Key? key}) : super(key: key);

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
