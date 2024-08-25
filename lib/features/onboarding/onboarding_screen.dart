import 'package:coffee/features/onboarding/widgets/onboarding_button.dart';
import 'package:coffee/features/onboarding/widgets/onboarding_title.dart';
import 'package:coffee/themes/t_styles.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                //black background
                Container(
                  color: Colors.black,
                  height: MediaQuery.of(context).size.height,
                ),
                //onboarding image
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/onboarding.png",
                  ),
                ),
                //onboarding Title
                OnboardingTitle(),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 160,
                  child: Text(
                    'Welcome to our cozy coffee corner, where \n every cup is a delightful for you.',
                    style: TStyles().regular14gray,
                    textAlign: TextAlign.center,
                  ),
                ),
                OnboardingButton()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
