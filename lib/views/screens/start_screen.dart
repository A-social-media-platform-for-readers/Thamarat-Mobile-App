import 'package:flutter/material.dart';
import 'package:untitled/views/common_widgets/app_title.dart';

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
      body: SafeArea(
          child: Container(
        width: double.infinity,
        child: const Column(
          children: [
            AppTitle(),
          ],
        ),
      )),
    );
  }
}
