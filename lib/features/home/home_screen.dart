import 'package:coffee/themes/color_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(children: [
          Container(
            width: double.infinity,
            height: 280,
            color: ColorManger().blackColor,
          )
        ])
      ]),
    );
  }
}
