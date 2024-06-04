import 'package:all_firebase/firebase_services/splash_services.dart';
import 'package:all_firebase/ui/auth/signup_screen.dart';
import 'package:all_firebase/widgets/round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (val) {
        SystemNavigator.pop();
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Email", prefixIcon: Icon(Icons.email)),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please enter email';
                        }
                      },
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    TextFormField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          hintText: "Password", prefixIcon: Icon(Icons.lock)),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'Please enter password';
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              RoundButton(
                  title: 'Login',
                  onTap: () {
                    if (formKey.currentState!.validate()) {}
                  }),
              Row(
                children: [
                  Text("Dont have an account?"),
                  TextButton(
                      onPressed: () {
                        navTo(context, SignUpScreen());
                      },
                      child: Text("Register"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
