import 'package:flutter/material.dart';

import '../../../theme/color.dart';


class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer(
      {Key? key,
      required this.title,
      required this.icon,
      required this.description})
      : super(key: key);
  final String title;
  final IconData icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: blackColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: blackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 35, top: 5),
              child: Text(
                description,
                maxLines: 2,
                style: const TextStyle(color: blackColor, fontSize: 16),
              )),
        ],
      ),
    );
  }
}
