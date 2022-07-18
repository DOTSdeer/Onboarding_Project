import 'package:flutter/material.dart';
import 'package:ft3/screens/SplashScreen.dart';

//this app works best with an emulated google pixel 4XL
// or in the resolution size of 1440 x 3040 PX
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Onbaording Screen',
      debugShowCheckedModeBanner: false,
      //bye bye to the demo banner on the top right
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreen(),
    );
  }
}
