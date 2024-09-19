import 'package:coffee/themes/color_manger.dart';
import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  const FilterRow(
      {super.key,
      required this.textColor,
      required this.title,
      this.backgroundColor});
  final Color textColor;
  final String title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: textColor, fontSize: 14),
        ),
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
            )),
            backgroundColor: backgroundColor == null
                ? null
                : WidgetStatePropertyAll(backgroundColor),
            minimumSize: WidgetStatePropertyAll(Size(100, 30))),
      ),
    );
  }
}
