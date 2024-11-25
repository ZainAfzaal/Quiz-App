import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.ontap, super.key});

  final String answerText;
  final void Function() ontap;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 2, 3, 3),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}




































// import 'package:flutter/material.dart';

// class AnswerButton extends StatelessWidget {
//   const AnswerButton({
//     super.key,
//     required this.answerText,
//     required this.onTap,
//   });

//   final String answerText;
//   final void Function() onTap;

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: onTap,
//       style: ElevatedButton.styleFrom(
//         padding: const EdgeInsets.symmetric(
//           vertical: 10,
//           horizontal: 40,
//         ),
//         backgroundColor: const Color.fromARGB(255, 33, 1, 95),
//         foregroundColor: Colors.white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(40),
//         ),
//       ),
//       child: Text(answerText),
//     );
//   }
// }
