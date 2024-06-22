import 'package:flutter/material.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class AddToButton extends StatelessWidget {
  final Color buttonColor;
  final Color borderColor;
  final Color txtColor;
  final String txt;
  final double leftpos;

  const AddToButton({
    super.key,
    required this.buttonColor,
    required this.borderColor,
    required this.txtColor,
    required this.txt,
    required this.leftpos,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 233,
      height: 47,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 233,
              height: 47,
              decoration: ShapeDecoration(
                color: buttonColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                shadows: [
                  BoxShadow(
                    color: borderColor,
                    blurRadius: 1,
                    offset: const Offset(0, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: leftpos,
            top: 10,
            child: Text(
              txt,
              textAlign: TextAlign.center,
              style: safeGoogleFont(
                color: txtColor,
                fontSize: 15,
                'Cairo',
                fontWeight: FontWeight.w800,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
