import 'dart:async';
import 'package:all_firebase/ui/auth/login_screen.dart';
import 'package:all_firebase/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashServices {
  void isLogin(context) {
    Timer(Duration(seconds: 2), () {
     Utils. navTo(context, LoginScreen());
    });
  }
}


