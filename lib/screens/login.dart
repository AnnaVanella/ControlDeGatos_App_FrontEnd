import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/model/user.dart';
import 'package:flutter_hegga_controldegastos_frontend/model/userError.dart';
import 'package:flutter_hegga_controldegastos_frontend/screens/home_screen.dart';
import 'package:flutter_hegga_controldegastos_frontend/utils.dart';
import '../widgets/widgets.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  LoginWidgetState createState() => LoginWidgetState();
}

class LoginWidgetState extends State<LoginWidget> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  // final _rutController = TextEditingController(text: "19503995-k");
  // text: "annarojas@gmail.com"
  // text: "123456"
  final userService = LoginApiService();
  // Login2Screen({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la imagen
          Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/login.jpg',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Rectángulo superpuesto
          Positioned.fill(
            child: Rectangulo(),
          ),

          // Botón personalizado en la esquina superior derecha

          const Positioned(
              top: 220,
              left: 0,
              right: 0,
              child: TextoLoginScreen(
                texto: 'Vacasiones aqui vamos',
              )),

          const Positioned(
            top: 280,
            left: 30,
            right: 30,
            child: TextoDes2Screen(
              texto:
                  'Recarga tus energías, desconéctate de la rutina y construye recuerdos inolvidables en tus vacaciones.',
            ),
          ),

          SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 400, bottom: 150, right: 36, left: 36),
                child: Form(
                  key: myFormKey,
                  child: Column(
                    children: [
                      const UserInput2Field(
                        icon: Icons.person_2_outlined,
                        text: 'Usuario',
                      ),
                      const SizedBox(height: 2),
                      CustomInputField(
                        controller: _usernameController,
                        hintText: 'Escribe tu correo electronico',
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          //que no este vacio
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu correo electrónico';
                          }
                          //que sea un correo
                          if (!value.contains('@')) {
                            return 'Ingresa un correo electrónico válido';
                          }
                          // Verificar si el correo electrónico contiene un punto después del símbolo '@'
                          final regex = RegExp(r'@[^@\s]+\.[^@\s]+');
                          if (!regex.hasMatch(value)) {
                            return 'Ingresa un correo electrónico válido';
                          }
                          // Agrega más validaciones según tus requisitos
                          return null;
                        },
                      ),
                      const SizedBox(height: 6),
                      const UserInput2Field(
                        icon: Icons.lock_clock_outlined,
                        text: 'Contraseña',
                      ),
                      const SizedBox(height: 2),
                      CustomInputField(
                        controller: _passwordController,
                        hintText: 'Ingresa tu contraseña',
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                        validator: (value) {
                          //que no este vacio
                          if (value == null || value.isEmpty) {
                            return 'Por favor, ingresa tu contraseña';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 100,
            right: 20,
            child: CustomTextButton(
              icon: Icons.add,
              iconSize: 18,
              buttonText: 'Crear Usuario',
              fontSize: 16,
              onPressed: () {
                Navigator.pushNamed(context, 'crear_cuenta');
              },
            ),
          ),

          // Botón de texto personalizado en la esquina inferior derecha
          Positioned(
            bottom: 300,
            right: 20,
            child: CustomTextButton(
              icon: Icons.lock_reset,
              iconSize: 14,
              buttonText: 'Recuperar contraseña',
              fontSize: 12,
              onPressed: () {
                Navigator.pushNamed(context, 'recuperar_contra');
              },
            ),
          ),

          CustomElevatedButton(
            buttonText: 'Ingresar',
            onPressed: () async {
              //Captura valor de los campos de text o TextField
              String username = _usernameController.text;
              String password = _passwordController.text;
              print(username);
              print(password);
              // String rut = _rutController.text;
              // if (!isValidRut(rut)) {
              //   mostrarErrorConSnackBar(context, "Rut invalido");
              //   return;
              // }
              // Verificar si los campos están vacíos
              if (username.isEmpty || password.isEmpty) {
                mostrarErrorConSnackBar(
                    context, "Por favor, completa todos los campos");
                return;
              }
              //si los campos no estan llenados no se puede avanzar
              // if (myFormKey.currentState == null) {
              //   // Si el formulario es válido, navegar a la siguiente pantalla
              //   mostrarErrorConAlertDialog(
              //       context, "Por favor, completa los campos");
              // }

              if (!isEmailValid(username)) {
                mostrarErrorConSnackBar(context, "Email invalido");
                return;
              }

              // if (!isPasswordValid(password)) {
              //   mostrarErrorConSnackBar(context,
              //       "La contraseña debe tener al menos 8 caracteres, incluir una letra mayúscula, un número, un carácter especial y no puede contener '@' ni '.'");
              //   return;
              // }

              Object response = await userService.login(username, password);
              print(response);

              if (response is User) {
                // ignore: use_build_context_synchronously
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
                return;
              }

              if (response is ErrorUser) {
                // ignore: use_build_context_synchronously
                //mostrarErrorConSnackBar(context, response.message);
                // ignore: use_build_context_synchronously
                mostrarErrorConAlertDialog(
                    context, "Error de inicio de sesión");
                return;
              }
              // ignore: use_build_context_synchronously
              mostrarErrorConAlertDialog(context, "Error inesperado");
            },
            // onPressed: () {
            //   // Navigator.pushNamed(context, 'home');
            // },
            top: 720,
            right: 84,
          ),
        ],
      ),
    );
  }
}
