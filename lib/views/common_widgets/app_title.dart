import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'ثمرات Thamarat',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontFamily: 'Changa',
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }
}
