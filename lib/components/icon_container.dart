import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/color.dart';

class IconContainer extends StatelessWidget {
  final String assetName;
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;

  const IconContainer({
    Key? key,
    required this.assetName,
    required this.text,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 170,
        width: 170,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? spartanRed : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              assetName,
              // ignore: deprecated_member_use
              color: isSelected ? spartanRed : Colors.grey,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: isSelected ? spartanRed : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
