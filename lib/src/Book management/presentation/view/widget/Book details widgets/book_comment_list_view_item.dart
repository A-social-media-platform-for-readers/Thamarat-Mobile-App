import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class BookCommentListViewItem extends StatelessWidget {
  const BookCommentListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 277,
      height: 77,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35,
            height: 35,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/35x35"),
                fit: BoxFit.cover,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 0.50, color: Color(0xFF8B8B8B)),
              ),
            ),
          ),
          const SizedBox(width: 9),
          SizedBox(
            width: 233,
            height: 77,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 233,
                    height: 77,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                ),
                Positioned(
                  left: 9,
                  top: 58,
                  child: Container(
                    width: 51,
                    height: 13,
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(width: 5),
                        Text(
                          '3 Like',
                          style: TextStyle(
                            color: Color(0xFF2F2F2F),
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 233,
                    height: 53,
                    decoration: ShapeDecoration(
                      color: Color(0xFFECECEC),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 100,
                  top: 6,
                  child: Text(
                    '1 h',
                    style: safeGoogleFont(
                      color: Color(0xFF353535),
                      fontSize: 8,
                      'Poppins',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ),
                Positioned(
                  left: 6,
                  top: 5,
                  child: Container(
                    width: 222,
                    height: 31,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 33,
                          top: 25,
                          child: Center(
                            child: Text(
                              'انا ايمن صديق البرنامج واحبكم في الله',
                              style: safeGoogleFont(
                                color: Colors.black,
                                fontSize: 12,
                                'Cairo',
                                fontWeight: FontWeight.w400,
                                height: 0.07,
                              ),
                              
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 10,
                          child: SizedBox(
                            width: 100.w,
                            child: Text(
                              'Ayman Ehab',
                              style: safeGoogleFont(
                                color: Colors.black,
                                fontSize: 12,
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0.07,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 73,
                  top: 58,
                  child: Text(
                    'Replay',
                    style: safeGoogleFont(
                      color: Color(0xFF2F2F2F),
                      fontSize: 11,
                      'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
