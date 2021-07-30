import 'package:flutter/material.dart';
import 'package:human_face_generator_app/homeScreen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: HomeScreen(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/splash.jpeg",
      text: "Splash Screen",
      textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(fontSize: 40.0),
      colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
      backgroundColor: Colors.white,
    );
  }
}
