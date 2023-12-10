import 'package:flutter/material.dart';

import '../utils/app_fonts.dart';

class WelcomeText extends StatefulWidget {
  const WelcomeText({super.key});

  @override
  State<WelcomeText> createState() => _WelcomeTextState();
}

class _WelcomeTextState extends State<WelcomeText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'اهلا بك في ثمرات\n',
          style: safeGoogleFont(
            'Cairo',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            height: 0,
            color: const Color(0xff000000),
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        Text(
          'طيب المذاق من ثمرات الاوراق',
          style: safeGoogleFont(
            'Cairo',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 0,
            color: const Color(0xff000000),
          ),
        ),
      ],
    );
  }
}
