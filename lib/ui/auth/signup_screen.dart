import 'package:all_firebase/firebase_services/splash_services.dart';
import 'package:all_firebase/ui/auth/login_screen.dart';
import 'package:all_firebase/widgets/round_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
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
                title: 'Sign Up',
                onTap: () {
                  if (formKey.currentState!.validate()) {}
                }),
            Row(
              children: [
                Text("Already have an account?"),
                TextButton(
                    onPressed: () {
                      navTo(context, LoginScreen());
                    },
                    child: Text("Log in"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
