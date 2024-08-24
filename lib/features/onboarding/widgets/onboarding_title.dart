import 'package:coffee/themes/t_styles.dart';
import 'package:flutter/material.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 200,
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.black.withOpacity(0)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.24, 0.5])),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Text(
          "Fall in Love with \n Coffee in Blissful \n Delight!",
          style: TStyles().simiBold32white,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
