// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sample/login.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  LoginPage1State createState() => LoginPage1State();
}

class LoginPage1State extends State<LoginPage1> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 1), () {
      Get.to(const LoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/logoback.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Image.asset("assets/Logo Big.png"), 
    );
  }
}
