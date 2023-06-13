import 'package:flutter/material.dart';
import '../../../theme/color.dart';

class TextFormFieldContainer extends StatelessWidget {
  const TextFormFieldContainer(
      {Key? key, required this.labelText, this.maxlines = 1})
      : super(key: key);
  final String labelText;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 14,
          left: MediaQuery.sizeOf(context).width * 0.05,
          right: MediaQuery.sizeOf(context).width * 0.05),
      child: TextFormField(
        style: const TextStyle(color: blackColor, fontSize: 18),
        validator: (v) {
          if (v!.isEmpty) {
            return "Required";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          enabledBorder:
              const UnderlineInputBorder(borderSide: BorderSide(color: blackColor)),
          //errorStyle: TextStyle(color: AppTheme.errorColor),
          errorBorder: const OutlineInputBorder(
              //borderSide: BorderSide(color: AppTheme.errorColor),
              ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: blackColor, width: 2.0),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          labelText: labelText,
          labelStyle: const TextStyle(color: blackColor),
          hintText: labelText,
        ),
        cursorColor: blackColor,
        maxLines: maxlines,
      ),
    );
  }
}
