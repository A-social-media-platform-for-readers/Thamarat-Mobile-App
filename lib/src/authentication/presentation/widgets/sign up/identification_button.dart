import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_colors.dart';
import '../../../../core/utils/app_fonts.dart';

class IdentificationButton extends StatefulWidget {
  final String startIdentityIcon;
  final String identityName;
  final String endIdentityIcon;
  final Color newColor;

  const IdentificationButton(
      {super.key,
      required this.startIdentityIcon,
      required this.endIdentityIcon,
      required this.newColor,
      required this.identityName});

  @override
  State<IdentificationButton> createState() => _IdentificationButtonState();
}

class _IdentificationButtonState extends State<IdentificationButton> {
  double widthAnimation = 160.w;
  Color? colorAnimation = AppColors.lightGray;
  late String identityIcontAnimation;
  late String checkboxIcontAnimation = "assets/Icons (2).png";
  Color? textColorAnimation = AppColors.charcoal;

  @override
  void initState() {
    super.initState();
    identityIcontAnimation = widget.startIdentityIcon;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            widthAnimation = widthAnimation == 160.w ? 268.w : 160.w;
            identityIcontAnimation =
                identityIcontAnimation == widget.startIdentityIcon
                    ? widget.endIdentityIcon
                    : widget.startIdentityIcon;
            checkboxIcontAnimation =
                checkboxIcontAnimation == "assets/Icons (2).png"
                    ? "assets/Icons (1).png"
                    : "assets/Icons (2).png";
            colorAnimation = colorAnimation == AppColors.lightGray
                ? widget.newColor
                : AppColors.lightGray;
            textColorAnimation = textColorAnimation == AppColors.charcoal
                ? Colors.white
                : AppColors.charcoal;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(microseconds: 300),
          child: Container(
            width: widthAnimation,
            height: 47.h,
            decoration: BoxDecoration(
              color: colorAnimation,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 18,
                    height: 15,
                    child: Image.asset(
                      identityIcontAnimation,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 38.w,
                      height: 24.h,
                      margin: EdgeInsets.symmetric(horizontal: 11.w),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          widget.identityName,
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Cairo',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: textColorAnimation,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: Image.asset(
                      checkboxIcontAnimation,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
