//  //   ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
//  Import FILES
//  //   ///

class CustomBorder extends StatelessWidget {
  const CustomBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return utlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(color: Colors.indigo, width: 2.5),
    );
  }
}


//  OutlineInputBorder customBorder() {
//     return OutlineInputBorder(
//       borderRadius: BorderRadius.circular(8),
//       borderSide: const BorderSide(color: Colors.indigo, width: 2.5),
//     );
//   }