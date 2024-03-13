import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../widgets/customTextButtom.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IntroductionScreen(
      globalBackgroundColor: Color(0xFF46494E),
      scrollPhysics: BouncingScrollPhysics(),
      pages: [
        PageViewModel(
          titleWidget: Container(
            width: 395, // Ajusta según sea necesario
            height: 54, // Ajusta según sea necesario
            child: const Text(
              "Vacaciones con gastos controlados ",
              style: TextStyle(
                color: Color(0xFFFFC727),
                fontSize: 22,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          body:
              "Ahora puedes irte de vacaciones con el control total de tus gastos en tus manos.",
          image: Image.asset(
            "assets/onboarding1.png",
            height: 420,
            width: 398,
          ),
          decoration: const PageDecoration(
            bodyTextStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                color: Color(0xFFFFFFFF)),
          ),
          footer: Padding(
            padding: EdgeInsetsDirectional.only(top: 200),
            child: Column(
              children: [
                CustomTextButton(
                  key: UniqueKey(),
                  buttonText: 'ingresar',
                  icon: Icons.arrow_forward,
                  onPressed: () {
                    Navigator.pushNamed(context, 'login2');
                  },
                ),
              ],
            ),
          ),
        ),
        PageViewModel(
          titleWidget: Container(
            width: 395, // Ajusta según sea necesario
            height: 54, // Ajusta según sea necesario
            child: const Text(
              "Registrar tu itinerario de vacaciones fácilmente",
              style: TextStyle(
                color: Color(0xFFFFC727),
                fontSize: 22,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          body:
              "Mantén un control detallado de las actividades que realizarás durante tus vacaciones.",
          image: Image.asset(
            "assets/onboarding2.png",
            height: 420,
            width: 398,
          ),
          decoration: const PageDecoration(
            bodyTextStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                color: Color(0xFFFFFFFF)),
          ),
          footer: Column(
            children: [
              CustomTextButton(
                key: UniqueKey(),
                buttonText: 'ingresar',
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.pushNamed(context, 'login2');
                },
              ),
            ],
          ),
        ),
        PageViewModel(
          titleWidget: Container(
            width: 395, // Ajusta según sea necesario
            height: 54, // Ajusta según sea necesario
            child: const Text(
              "Gasta únicamente tu presupuesto destinado para las vacaciones.",
              style: TextStyle(
                color: Color(0xFFFFC727),
                fontSize: 22,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          body:
              "No gastes mas de la cuenta ahora puedes controlar tus gatos destinado para tus vacaciones",
          image: Image.asset(
            "assets/onboarding3.png",
            height: 420,
            width: 398,
          ),
          decoration: const PageDecoration(
            bodyTextStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 18.0,
                color: Color(0xFFFFFFFF)),
          ),
          footer: Column(
            children: [
              CustomTextButton(
                key: UniqueKey(),
                buttonText: 'ingresar',
                icon: Icons.arrow_forward,
                onPressed: () {
                  Navigator.pushNamed(context, 'login2');
                },
              ),
            ],
          ),
        ),
      ],

      onDone: () {},
      showNextButton: true,
      showBackButton: true,
      // onSkip: () {},
      // showSkipButton: true,
      // skip: const Text("Skip",
      //     style: TextStyle(
      //       fontWeight: FontWeight.bold,
      //       fontSize: 18,
      //       color: Color(0xFFFFC727),
      //     )),
      back: const Icon(Icons.arrow_back, color: Color(0xFFFFC727)),
      next: const Icon(
        Icons.arrow_forward,
        color: Color(0xFFFFC727),
      ),
      done: const Text("done",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xFFFFC727))),
      dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: Size(16.0, 16.0),
          color: const Color(0xFFFFEEBC),
          activeColor: Color(0xFFFFC727),
          spacing: const EdgeInsets.symmetric(horizontal: 10.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0))),
    ));
  }
}
