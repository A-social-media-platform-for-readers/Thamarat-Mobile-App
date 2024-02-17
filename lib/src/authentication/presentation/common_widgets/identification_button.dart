import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/utils/app_fonts.dart';

class IdentificationButton extends StatefulWidget {
  final String identity;
  final Color newColor;
  final String icon;
  const IdentificationButton(
      {super.key,
      required this.identity,
      required this.newColor,
      required this.icon});

  @override
  State<IdentificationButton> createState() => _IdentificationButtonState();
}

class _IdentificationButtonState extends State<IdentificationButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _widthAnimation;
  late Animation<double> _hegihtAnimation;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    // Define the size animation
    _widthAnimation = Tween<double>(begin: 134.0.w, end: 144.0.w)
        .animate(_animationController);

    _hegihtAnimation =
        Tween<double>(begin: 47.0.h, end: 57.0.h).animate(_animationController);

    // Define the color animation
    _colorAnimation =
        ColorTween(begin: const Color(0xffe6e6e6), end: widget.newColor)
            .animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _onButtonPressed() {
    if (_animationController.isCompleted) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onButtonPressed,
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Container(
              width: _widthAnimation.value,
              height: _hegihtAnimation.value,
              decoration: BoxDecoration(
                color: _colorAnimation.value,
                borderRadius: BorderRadius.circular(8),
              ),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 18.5,
                      height: 18.5,
                      child: Image.asset(
                        widget.icon,
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 11.w),
                        child: Text(
                          widget.identity,
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Cairo',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff2a2a2a),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                      height: 24.h,
                      child: Image.asset(
                        'assets/Icons (2).png',
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
