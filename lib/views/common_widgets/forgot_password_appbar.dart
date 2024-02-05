import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordAppBar extends StatefulWidget {
  final Widget screen;
  const ForgotPasswordAppBar({super.key, required this.screen});

  @override
  State<ForgotPasswordAppBar> createState() => _ForgotPasswordAppBarState();
}

class _ForgotPasswordAppBarState extends State<ForgotPasswordAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 31.89.w,
      height: 31.89.h,
      child: IconButton(
        icon: Image.asset(
          'assets/group-322.png',
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.screen),
          );
        },
      ),
    );
  }
}
