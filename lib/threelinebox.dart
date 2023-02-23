import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_schemes.g.dart';

class ThreeLineBox extends StatelessWidget {
  ThreeLineBox({
    super.key,
    this.text,
    this.text1,
    this.text2,
    this.text3,
    required this.isAvatar,
   
  });

  final String? text;
  final String? text1;
  final String? text2;
  final String? text3;

  bool isAvatar;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isAvatar == true) ...[
          SizedBox(
            width: 16.w,
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.h, left: 16.w),
            child: Container(
              width: 80.w,
              height: 80.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: const Color.fromRGBO(255, 191, 104, 1),
              ),
              child: Transform.scale(
                scale: 0.6,
                child: Image.asset(
                  "assets/gp.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
        ] else ...[
          SizedBox(
            height: 4.h,
          )
        ],
        Padding(
          padding: EdgeInsets.only(left: 16.w, top: 4.h),
          child: Container(
            width: 240.w,
            // height: 100.h,
            decoration: BoxDecoration(
                color: lightColorScheme.inversePrimary,
                borderRadius: BorderRadius.circular(12.r)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: text3, //"Your Wholesome Eten buddy"
                    style: TextStyle(
                        color: lightColorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: text2, //"Your Wholesome Eten buddy"
                    style: TextStyle(
                        color: lightColorScheme.onSurface,
                        fontWeight: FontWeight.w400),
                  ),
                  TextSpan(
                    text: text, //"Hi, I’m Holly.\n\n"
                    style: TextStyle(
                      fontFamily: "Roboto Medium",
                      color: lightColorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                    ),
                  ),
                  TextSpan(
                    text: text1, //"Your Wholesome Eten buddy"
                    style: TextStyle(
                        color: lightColorScheme.onSurface,
                        fontWeight: FontWeight.w400),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
