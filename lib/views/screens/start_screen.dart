import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/welcome_text.dart';
import 'package:untitled/views/screens/Login_screen.dart';
import '../common_widgets/app_button.dart';
import '../common_widgets/app_title.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF92E3A9),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 53,
                ),
                const AppTitle(),
                Image.asset(
                  'assets/reading-list-bro-1.png',
                  width: 460,
                  height: 460,
                ),
                const SizedBox(
                  height: 29,
                ),
                const WelcomeText(),
                const SizedBox(
                  height: 17,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const AppButton(
                    lable: 'لدي حساب بالفعل',
                    textColor: Colors.white,
                    borderColor: Colors.white,
                    buttonColor: Color(0xFF92E3A9),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const AppButton(
                    lable: 'إنشاء حساب',
                    textColor: Color(0xFF48FB77),
                    borderColor: Colors.white,
                    buttonColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
