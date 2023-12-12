import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';

import '../common_widgets/app_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 53,
            ),
            AppTitle(
              textColor: Color(0xFF92E3A9),
            ),
            SizedBox(
              height: 21,
            ),
            WelcomeText(),
          ],
        ),
      )),
    );
  }
}
