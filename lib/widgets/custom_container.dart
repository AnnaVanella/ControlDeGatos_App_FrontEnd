import 'package:flutter/material.dart';

// class CustomContainer extends StatelessWidget {
//   final Widget child;

//   const CustomContainer({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 212.0,
//       left: 0,
//       right: 0,
//       bottom: 0,
//       child: Container(
//         width: 430.0,
//         height: 853.0,
//         decoration: const BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(50.0),
//             topRight: Radius.circular(50.0),
//           ),
//           color: Color(0xFF46494E),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: child,
//         ),
//       ),
//     );
//   }
// }

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        ),
        color: Color(0xFF46494E),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: child,
      ),
    );
  }
}
