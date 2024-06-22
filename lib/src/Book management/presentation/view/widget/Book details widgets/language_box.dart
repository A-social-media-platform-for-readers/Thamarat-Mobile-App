import 'package:flutter/material.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class LanguageBox extends StatelessWidget {
  final String languageName;
  const LanguageBox({super.key, required this.languageName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 55,
      height: 25,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 1,
            child: Container(
              width: 100,
              height: 24,
              decoration: ShapeDecoration(
                color: const Color(0x7A92E3A9),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
          ),
          Positioned(
            left: 5,
            top: 0,
            child: SizedBox(
              width: 40,
              height: 21,
              child: Text(
                languageName,
                textAlign: TextAlign.right,
                style: safeGoogleFont(
                  color: Colors.black,
                  fontSize: 12,
                  'Cairo',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
