import 'package:flutter/material.dart';

import '../theme/color.dart';

class ChipWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isIconShowFirst;
  const ChipWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.isIconShowFirst})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4), // <-- Radius
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: isIconShowFirst
            ? [
                Icon(
                  icon,
                  color: blackColor,
                ),
                const SizedBox(width: 5),
                Text(
                  text,
                  style: const TextStyle(color: blackColor),
                )
              ]
            : [
                Text(
                  text,
                  style: const TextStyle(color: blackColor),
                ),
                const SizedBox(width: 5),
                Icon(
                  icon,
                  color: blackColor,
                ),
              ],
      ),
    );
  }
}
