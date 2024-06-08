import 'package:all_firebase/ui/auth/login_screen.dart';
import 'package:all_firebase/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<PostsScreen> {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.logout_rounded),
            onPressed: () {
              auth.signOut().then(
                (value) {
                  Utils.navTo(context, LoginScreen());
                },
              ).onError(
                (error, stackTrace) {
                  Utils.toastMessage(error.toString());
                },
              );
            },
          )
        ],
      ),
    );
  }
}
