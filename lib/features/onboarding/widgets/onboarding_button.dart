import 'package:coffee/core/helpers/extinsion.dart';
import 'package:coffee/core/routing/routes.dart';
import 'package:coffee/themes/color_manger.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 40,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16))),
                  backgroundColor:
                      WidgetStatePropertyAll(ColorManger().brownColor),
                  minimumSize:
                      WidgetStatePropertyAll(Size(double.infinity, 72))),
              onPressed: () {
                context.pushNamed(Routes.HomeScreen);
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
        ));
  }
}
