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
    // return OutlinedButton(
    //   onPressed: () {},
    //   style: ElevatedButton.styleFrom(
    //     padding: const EdgeInsets.symmetric(horizontal: 10),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(4), // <-- Radius
    //     ),
    //   ),
    //   child: Row(
    //     mainAxisSize: MainAxisSize.min,
    //     children: isIconShowFirst
    //         ? [
    //             Icon(
    //               icon,
    //               color: blackColor,
    //             ),
    //             const SizedBox(width: 5),
    //             Text(
    //               text,
    //               style: const TextStyle(color: blackColor),
    //             )
    //           ]
    //         : [
    //             Text(
    //               text,
    //               style: const TextStyle(color: blackColor),
    //             ),
    //             const SizedBox(width: 5),
    //             Icon(
    //               icon,
    //               color: blackColor,
    //             ),
    //           ],
    //   ),
    // );
    return chipList();
  }
}

Widget _buildChip(
    {required String label, required Color bgcolor, required Color textcolor}) {
  return Chip(
    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(2)),
    labelPadding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 2),
    label: Text(
      label,
      style: TextStyle(
          color: textcolor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          fontSize: 14),
    ),
    backgroundColor: bgcolor,
    elevation: 1.0,
    shadowColor: Colors.grey[60],
    padding: const EdgeInsets.all(8.0),
  );
}

Widget chipList() {
  return Wrap(
    spacing: 6.0,
    runSpacing: 6.0,
    children: <Widget>[
      _buildChip(label: 'Filter', bgcolor: blackColor, textcolor: whiteColor),
      _buildChip(
          label: 'Location', bgcolor: primaryColor, textcolor: Colors.grey),
      _buildChip(
          label: 'Pro category', bgcolor: primaryColor, textcolor: Colors.grey),
      _buildChip(
          label: 'Language', bgcolor: primaryColor, textcolor: Colors.grey),
    ],
  );
}
