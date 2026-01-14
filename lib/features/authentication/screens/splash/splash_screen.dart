import 'package:flutter/material.dart';
import 'package:health_app/utils/constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
              child: Image(
                  image: AssetImage(MyImages.splashScreenImg)
              )
          )
        ],
      ),
    );
  }
}

