// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample/constants.dart';
import 'package:sample/login.dart';

import 'color_schemes.g.dart';
import 'threelinebox.dart';

class OtpBox extends StatefulWidget {
  const OtpBox({super.key});

  @override
  State<OtpBox> createState() => _OtpBoxState();
}

class _OtpBoxState extends State<OtpBox> {
  TextEditingController otpController = TextEditingController();

  bool hasError = false;
  bool isentered = false;
  String currentText = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset("assets/Bg.png"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 16.w, left: 16.w, right: 16.w),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAll(LoginPage());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: lightColorScheme.secondaryContainer),
                      child: SizedBox(
                        height: 56.h,
                        width: 328.w,
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            SizedBox(
                              width: 14.w,
                            ),
                            Text("Start again with mobile/email", style: sample)
                          ],
                        ),
                      ),
                    ),
                  ),
                  ThreeLineBox(
                      text3: " You are a new user\n\n",
                      text2: "OTP sent to 9876543210\n\n",
                      text: "Enter OTP to continue \nregistering as a new user",
                      isAvatar: true),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 328.w,
                      height: 176.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(255, 191, 104, 1),
                          width: 1.sp,
                        ),
                        color: Colors.white,
                      ),
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 16.w, top: 24.h),
                            child: SizedBox(
                              width: 296.w,
                              height: 56.h,
                              child: TextFormField(
                                onChanged: (value) {
                                  setState(() {
                                    isentered = true;
                                  });
                                },
                                style: TextStyle(
                                    color: lightColorScheme.onSurface),
                                controller: otpController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  // floatingLabelStyle: TextStyle(backgroundColor: Colors.black),
                                  label: const Text("OTP"),
                                  // labelText: "hi",
                                  // helperText: "Hi",
                                  labelStyle: TextStyle(
                                    fontFamily: "ProductSans Medium",
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w500,
                                    color: lightColorScheme.primary,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: lightColorScheme.inversePrimary,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: lightColorScheme.outline,
                                    ), //<-- SEE HERE
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 80.w,
                              top: 112.h,
                            ),
                            child: SizedBox(
                              width: 112.w,
                              height: 40.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend OTP",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Roboto Medium", // Roboto Large
                                    color: lightColorScheme.primary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 200.w, top: 112.h, right: 16.w),
                            child: SizedBox(
                              width: 112.w,
                              height: 40.h,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: isentered == false
                                        ? lightColorScheme.onSurface
                                            .withOpacity(0.12)
                                        : lightColorScheme.inversePrimary),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Submit",
                                      style: TextStyle(
                                        color: darkColorScheme.onPrimary,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 6.w,
                                    ),
                                    Icon(Icons.arrow_forward_rounded,
                                        color: darkColorScheme.onPrimary)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
