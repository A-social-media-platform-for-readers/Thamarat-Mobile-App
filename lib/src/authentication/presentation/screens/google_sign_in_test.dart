import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleSignInTest extends StatelessWidget {
  final String user;
  final String email;
  const GoogleSignInTest({super.key, required this.user, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Text(user),
          SizedBox(
            height: 20.h,
          ),
          Text(email)
        ],
      )),
    );
  }
}
