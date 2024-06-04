import 'package:all_firebase/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Firebase'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/splash.jpg",
              width: 260,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text("Welcone to learn Firebase")),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
