import 'package:flutter/material.dart';
import '../utils/app_fonts.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Thamarat ثمرات',
      textAlign: TextAlign.center,
      style: safeGoogleFont(
        'Changa',
        fontSize: 40,
        fontWeight: FontWeight.w400,
        height: 0,
        color: Colors.white,
      ),
    );
  }
}
