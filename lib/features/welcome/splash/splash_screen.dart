import 'package:abo_maged_app/core/utils/app_assets.dart';
import 'package:abo_maged_app/core/utils/app_colors.dart';
import 'package:abo_maged_app/features/welcome/on_boarding/view/on_boarding_screen.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      child: AnimatedSplashScreen(
        duration: 1500,
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: const Duration(milliseconds: 1500),
        splash: SvgPicture.asset(
          "splash".getSvgAsset,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        nextScreen: const OnBoardingScreen(),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
