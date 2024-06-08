import 'dart:async';
import 'package:all_firebase/ui/auth/login_screen.dart';
import 'package:all_firebase/ui/posts/posts.dart';
import 'package:all_firebase/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashServices {
  void isLogin(context) {
    final auth = FirebaseAuth.instance;
    // get current user details to check user login or not
    final user = auth.currentUser;
    if (user != null) {
      Timer(Duration(seconds: 2), () {
        Utils.navTo(context, PostsScreen());
      });
    } else {
      Timer(Duration(seconds: 2), () {
        Utils.navTo(context, LoginScreen());
      });
    }
  }
}
