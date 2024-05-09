import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:card_shark_app/main.dart';
import 'package:card_shark_app/pages/home_page.dart';
import 'package:card_shark_app/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      backgroundColor: const Color(0xFF2D3254),
      splashIconSize: double.infinity,
      splash: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/Logo.png',
                scale: 2.5,
              ),
            ),
          ],
        ),
      ),
      nextScreen: initScreen == 0 || initScreen == null
          ? const OnBoardingPage()
          : const HomePage(),
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
