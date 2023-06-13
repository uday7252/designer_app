import 'package:flutter/material.dart';

import '../theme/color.dart';


class OriginalButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;

  const OriginalButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(spartanRed)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
    );
  }
}
