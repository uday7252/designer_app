import 'package:flutter/material.dart';

import '../theme/color.dart';

// ignore: must_be_immutable
class BottomElevatedButton extends StatelessWidget {
  String text;
  void Function()? onpressed;
  BottomElevatedButton({
    this.text = 'Send Message',
    this.onpressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          onPressed: onpressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(secondaryColor),
          ),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
