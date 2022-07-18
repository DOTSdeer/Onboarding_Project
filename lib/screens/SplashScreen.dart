import 'package:flutter/material.dart';
import 'package:ft3/helper/images.dart';
import 'package:ft3/screens/IntroScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => IntroScreen(),
      ));
    });
  }
  //making the splashscreen details / instructions for code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            KImages.SplashLogo,
            height: 300,
          ),
        ]),
      ),
    );
  }
}
// making the screen itself for the splash screen
