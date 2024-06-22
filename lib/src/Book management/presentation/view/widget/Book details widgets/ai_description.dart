import 'package:flutter/material.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class AiDescription extends StatelessWidget {
  final String txt;
  final String iconUrl;
  const AiDescription({super.key, required this.txt, required this.iconUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          txt,
          textAlign: TextAlign.right,
          style: safeGoogleFont(
            color: Colors.black,
            fontSize: 14,
            'Cairo',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        const SizedBox(width: 11),
        Container(
            width: 24,
            height: 24,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(),
            child: Image.asset(iconUrl)),
      ],
    );
  }
}
