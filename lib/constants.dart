import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_schemes.g.dart';

var kDecoration = BoxDecoration(
  color: lightColorScheme.background,
  border: Border.all(
    color: lightColorScheme.inversePrimary,
    width: 1.sp,
  ),
);
var kbTextStyle = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    fontFamily: "Roboto Medium",
    color: lightColorScheme.onSecondaryContainer);

var klabelTextStyle = TextStyle(
  fontFamily: "ProductSans Medium",
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: lightColorScheme.primary,
);
var sample = TextStyle(
  fontSize: 14.w,
  fontFamily: "Roboto Large",
  color: lightColorScheme.onSecondaryContainer,
);




const kNextButtonColor = Color(0xff0C6E54);

var kNextDoneButtonTextStyle = TextStyle(
  fontSize: 15.sp,
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontFamily: 'ProductSans Medium',
  fontStyle: FontStyle.normal,
);

var kPrevDoneButtonTextStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w700,
  color: const Color(0xff0C6E54),
  fontFamily: 'ProductSans Regular',
  fontStyle: FontStyle.normal,
  // decoration: kDecorationPrevButton,
);

var titleTextStyle = TextStyle(
  fontSize: 24.sp,
  fontWeight: FontWeight.w700,
  color: Color.fromRGBO(0, 0, 0, 1),
  fontFamily: 'ProductSans Regular',
  fontStyle: FontStyle.normal,
);

var subtitleTextStyle = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w300,
  color: Color.fromRGBO(0, 0, 0, 0.25),
  fontFamily: 'Roboto Regular',
  fontStyle: FontStyle.normal,
);

var normalTextStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w400,
  color: Color.fromRGBO(0, 0, 0, 1),
  fontFamily: 'ProductSans Regular',
  fontStyle: FontStyle.normal,
);

var mealTitleTextStyle = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    fontFamily: 'ProductSans Regular',
    color: Color.fromRGBO(0, 0, 0, 1));

var percentIndicTextStyle = TextStyle(
  fontSize: 10.sp,
  fontWeight: FontWeight.w400,
  color: Colors.black,
  fontFamily: 'Roboto Regular',
  fontStyle: FontStyle.normal,
);

var arrowNextIcon = Icon(
  Icons.arrow_forward,
  size: 20.sp,
  color: Colors.white,
);

var arrowPrevIcon = Icon(
  Icons.arrow_back,
  size: 20.sp,
  color: const Color(0xff0C6E54),
);

var kDecriptionTextStyle = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontFamily: 'ProductSans Medium',
  fontStyle: FontStyle.normal,
);

var kCardTitleTextStyle = TextStyle(
    fontFamily: "Roboto Regular",
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: Colors.black);

var kMealTypeTextStyle = TextStyle(
    fontSize: 17.sp,
    fontFamily: "ProductSans Regular",
    fontWeight: FontWeight.w500);

var kViewAllTextStyle = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Color(0xfffa9746));

var kMealTypeTextStyle2 = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
    color: Colors.black);

var calNumberTextStyle = TextStyle(
    fontFamily: "Roboto Regular",
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black);

var kSortedByTextStyle = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000).withOpacity(0.5));

var kWelcomePoints = TextStyle(
    fontFamily: "Roboto Regular", fontSize: 14.sp, fontWeight: FontWeight.w400);

var kDialogGroceryName = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 14.sp,
    fontWeight: FontWeight.w700);

var kDialogSelectQty = TextStyle(
    fontFamily: "Roboto Regular",
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: Color(0xff000000).withOpacity(0.5));

var kDialogQty = TextStyle(
    fontFamily: "Roboto Regular", fontSize: 14.sp, fontWeight: FontWeight.w400);

var kpickForStyle = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black.withOpacity(0.5));
var kWeekStyle = TextStyle(
  fontFamily: "Roboto Regular",
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: Color(0xff0C6E54),
);
var kAutomateStyle = TextStyle(
  fontFamily: "Roboto Regular",
  fontSize: 14.sp,
  fontWeight: FontWeight.w400,
  color: Colors.black.withOpacity(0.5),
);

var ktermsHeading = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 20.sp,
    fontWeight: FontWeight.w500);
var ktermsSubHeading = TextStyle(
    fontFamily: "ProductSans Regular",
    fontSize: 16.sp,
    fontWeight: FontWeight.w400);
var ktermsmatter = TextStyle(
    fontSize: 12.sp,
    fontFamily: "ProductSans Regular",
    fontWeight: FontWeight.w400,
    color: Colors.grey);
