import 'package:flutter/material.dart';
import 'package:untitled/views/screens/Identification_screen.dart';
import 'package:untitled/views/screens/login_screen.dart';
import '../common_widgets/forgot_password_appbar.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: const ForgotPasswordAppBar(
          screen: LoginScreen(),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
