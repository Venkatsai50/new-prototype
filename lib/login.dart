import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample/color_schemes.g.dart';
import 'package:sample/constants.dart';
import 'package:sample/otpBox.dart';
import 'threelinebox.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Stack(
          children: [
            Image.asset("assets/Bg.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ThreeLineBox(
                    text: "Hi, I’m Holly.\n\n",
                    text1: "Your Wholesome Eten buddy",
                    isAvatar: true),
                    ThreeLineBox(
                    text: "Enter your mobile number\n or email to get started",
                   isAvatar: false,),
                 const LoginBox(),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class LoginBox extends StatefulWidget {
  const LoginBox({super.key});

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

TextEditingController phoneController = TextEditingController();

class _LoginBoxState extends State<LoginBox> {
  final bool isEmail = false;
  bool isEmailCard = false;
  bool isSuccess = false;

  
  @override
  void initState() {
    super.initState();
    phoneController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      width: 328.w,
      height: 320.h,
      decoration: kDecoration,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40.w, top: 36.h),
            child: Container(
              width: 251.w,
              height: 40.h,
              decoration: BoxDecoration(
                border: Border.all(color: lightColorScheme.outline, width: 1.w),
                borderRadius: BorderRadius.circular(100.r),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isEmailCard = false;
                      });
                    },
                    child: Container(
                      width: 124.5.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100.r),
                          topLeft: Radius.circular(100.r),
                        ),
                        color: isEmailCard == false
                            ? lightColorScheme.secondaryContainer
                            : lightColorScheme.background,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            if (isEmailCard == false) ...[
                              SizedBox(
                                width: 29.56.w,
                              ),
                              Icon(
                                Icons.check_rounded,
                                // color: const Color.fromRGBO(29, 25, 43, 1),
                                size: 15.sp,
                              ),
                              SizedBox(
                                width: 5.25.w,
                              ),
                            ] else ...[
                              SizedBox(
                                width: 40.w,
                              )
                            ],
                            const Text(
                              "Mobile",
                              // style: kbTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isEmailCard = true;
                      });
                    },
                    child: Container(
                      width: 124.5.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100.r),
                          topRight: Radius.circular(100.r),
                        ),
                        color: isEmailCard == true
                            ? lightColorScheme.secondaryContainer
                            : lightColorScheme.background,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            if (isEmailCard == true) ...[
                              SizedBox(
                                width: 29.56.w,
                              ),
                              Icon(
                                Icons.check_rounded,
                                // color: const Color.fromRGBO(29, 25, 43, 1),
                                size: 15.sp,
                              ),
                              SizedBox(
                                width: 5.25.w,
                              ),
                            ] else ...[
                              SizedBox(
                                width: 40.w,
                              )
                            ],
                            Text(
                              "Email",
                              style: kbTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.w, top: 96.h),
            width: 296.w,
            height: 56.h,
            decoration: BoxDecoration(
              // color: lightColorScheme.background,
              border: Border.all(
                color: lightColorScheme.outline,
              ),
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "+91 - India",
                    // style: TextStyle(color: lightColorScheme.onSurfaceVariant),
                  ),
                  Transform.scale(
                      scale: 0.3, child: Image.asset("assets/icon.png")),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              top: 168.h,
            ),
            child: SizedBox(
              width: 296.w,
              height: 56.h,
              // child: const TextField(),
              child: TextFormField(
                onChanged: (value) {
                  print(value.length);
                  if (value.length == 10) {
                    isSuccess = true;
                    print('hi');

                    print(isSuccess);
                    setState(() {});
                  }
                },
                // style: TextStyle(color: lightColorScheme.onSurface),
                controller: phoneController,
                keyboardType: TextInputType.number,
                // validator: MultiValidator([
                //   RequiredValidator(errorText: "Required"),
                //   EmailValidator(
                //       errorText: "Enter a valid email id"),
                // ]),
                decoration: InputDecoration(
                  labelStyle: klabelTextStyle,
                  label: Text(
                    "Mobile number",
                    style: TextStyle(
                      fontFamily: "Roboto Regular",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5),
                    ),
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
                // controller: loginController.emailController,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 256.h, left: 101.w, right: 16.w),
            child: SizedBox(
              width: 211.w,
              height: 40.h,
              child: ElevatedButton(
                onPressed: () {
                  if (isSuccess) Get.to(OtpBox());
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: isSuccess
                        ? lightColorScheme.inversePrimary
                        : lightColorScheme.onSurface.withOpacity(0.12),
                    textStyle: TextStyle(
                        color: lightColorScheme.onSurface.withOpacity(0.38))),
                child: Row(
                  children: [
                    Text(
                      "Submit mobile number",
                      style: TextStyle(
                        color: phoneController.text.length == 10
                            ? darkColorScheme.onPrimary
                            : lightColorScheme.onSurface.withOpacity(0.38),
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      color: phoneController.text.length == 10
                          ? darkColorScheme.onPrimary
                          : lightColorScheme.onSurface.withOpacity(0.38),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


