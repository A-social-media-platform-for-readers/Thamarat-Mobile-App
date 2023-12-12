import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/utils/app_fonts.dart';

import '../common_widgets/app_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 53,
            ),
            const AppTitle(
              textColor: Color(0xFF92E3A9),
            ),
            const SizedBox(
              height: 21,
            ),
            const WelcomeText(),
            const SizedBox(
              height: 26,
            ),
            SizedBox(
              width: 297,
              height: 79,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 79,
                    child: Text(
                      'البريد الالكتروني',
                      textAlign: TextAlign.right,
                      style: safeGoogleFont(
                        'Cairo',
                        color: const Color(0xFF8B8B8B),
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsetsDirectional.only(top: 23),
                    width: 297,
                    height: 56,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF8B8B8B)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
