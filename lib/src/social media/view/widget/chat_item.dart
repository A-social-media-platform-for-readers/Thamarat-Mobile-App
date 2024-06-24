import 'package:flutter/material.dart';
import 'package:untitled/src/core/utils/app_fonts.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 62,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 62,
            height: 62,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    width: 62,
                    height: 62,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Color(0xFF699CFF)),
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/62x62"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 44,
                  top: 52,
                  child: Container(
                    width: 10.83,
                    height: 9.75,
                    child: Container(
                      width: 7,
                      height: 3,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 17),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ayman Ehab',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: safeGoogleFont(
                    color: Colors.black,
                    fontSize: 13,
                    'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0.06,
                  ),
                ),
                const SizedBox(height: 4),
              ],
            ),
          ),
          const SizedBox(width: 28),
          Stack(
            children: [
              Positioned(
                left: 29,
                top: 26,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF04A4C),
                  ),
                  child: Center(
                    child: Text(
                      '5',
                      style: safeGoogleFont(
                        color: Colors.white,
                        fontSize: 12,
                        'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Text(
                  '10 min ago',
                  style: safeGoogleFont(
                    color: Color(0xFF797C7B),
                    fontSize: 9,
                    'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
