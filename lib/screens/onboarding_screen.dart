import 'package:flutter/material.dart';
import 'package:flutter_hegga_controldegastos_frontend/screens/login.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import '../widgets/widgets.dart';

class OnboardingScreen extends StatelessWidget {
  final Color primaryColor = const Color(0xFFFFC727);

  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Ingresar',
      onFinish: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login2Screen(),
          ),
        );
      },
      finishButtonStyle: const FinishButtonStyle(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        hoverColor: Color(0xFFFFC727),
        foregroundColor: Colors.black,
        splashColor: Color(0xFFFFC727),
        backgroundColor: Color(0xFFFFC727),
      ),
      skipTextButton: Text(
        '',
        style: TextStyle(
          fontSize: 16,
          color: primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        '',
        style: TextStyle(
          fontSize: 16,
          color: primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        // MaterialPageRoute(
        //   builder: (context) => const null(),
        // )
      },
      controllerColor: Color(0xFFFFC727),
      totalPage: 3,
      headerBackgroundColor: Color(0xFF46494E),
      pageBackgroundColor: Color(0xFF46494E),
      background: [
        Image.asset(
          'assets/onboarding1.png',
          height: 400,
        ),
        Image.asset(
          'assets/onboarding2.png',
          height: 400,
        ),
        Image.asset(
          'assets/onboarding3.png',
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Vacaciones con gastos controlados',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Ahora puedes irte de vacaciones con el control total de tus gastos en tus manos.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0,
                    color: Color(0xFFFFFFFF)),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextButton(
                key: UniqueKey(),
                buttonText: 'ingresar',
                icon: Icons.add,
                onPressed: () {
                  Navigator.pushNamed(context, 'login2');
                },
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Registrar tu itinerario de vacaciones fácilmente',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Mantén un control detallado de las actividades que realizarás durante tus vacaciones.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0,
                    color: Color(0xFFFFFFFF)),
              ),
              const SizedBox(
                height: 45,
              ),
              CustomTextButton(
                key: UniqueKey(),
                buttonText: 'ingresar',
                icon: Icons.add,
                onPressed: () {
                  Navigator.pushNamed(context, 'login2');
                },
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 480,
              ),
              Text(
                'Gasta únicamente tu presupuesto destinado para las vacaciones.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 22,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'No gastes mas de la cuenta ahora puedes controlar tus gatos destinado para tus vacaciones',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 18.0,
                    color: Color(0xFFFFFFFF)),
              ),
              const SizedBox(
                height: 46,
              ),
              // CustomTextButton(
              //   key: UniqueKey(),
              //   buttonText: 'ingresar',
              //   icon: Icons.add,
              //   onPressed: () {
              //     Navigator.pushNamed(context, 'login2');
              //   },
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
