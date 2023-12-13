import 'package:flutter/cupertino.dart';
import 'package:untitled/views/utils/app_fonts.dart';

class BackNextButtons extends StatefulWidget {
  final String lable;
  final Color textColor;
  final Color buttonColor;

  const BackNextButtons({
    super.key,
    required this.lable,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  State<BackNextButtons> createState() => _BackNextButtonsState();
}

class _BackNextButtonsState extends State<BackNextButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 56,
        decoration: ShapeDecoration(
          color: widget.buttonColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: widget.buttonColor),
            borderRadius: BorderRadius.circular(10),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0xCC000000),
              blurRadius: 4,
              offset: Offset(0, 0),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
          child: Text(
            widget.lable,
            textAlign: TextAlign.center,
            style: safeGoogleFont(
              'Cairo',
              color: widget.textColor,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ));
  }
}
