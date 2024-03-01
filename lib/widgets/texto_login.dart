import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hegga_controldegastos_frontend/theme/app_theme.dart';

class TextoLoginScreen extends StatelessWidget {
  const TextoLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            child: SizedBox(
          child: Column(
            children: [
              Center(
                  child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.06,
                    right: size.width * 0.06,
                    top: size.height * 0.25),
                child: const Text(
                  'Vacaciones aqui vamos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFFC727),
                    fontFamily: 'Montserrat',
                    fontSize: 22,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ))
            ],
          ),
        ))
      ],
    );
  }
}
