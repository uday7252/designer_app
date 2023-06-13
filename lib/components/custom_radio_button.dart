import 'package:flutter/material.dart';

import '../theme/color.dart';

class CustomRadioButton extends StatelessWidget {
  final bool value;
  final bool groupValue;
  final Function(bool) onChanged;

  const CustomRadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          color: value == groupValue ? spartanRed : null,
          shape: BoxShape.circle,
          border: Border.all(
            color: value == groupValue ? spartanRed : Colors.grey,
          ),
        ),
        child: value == groupValue
            ? const Icon(
                Icons.check,
                size: 16,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
