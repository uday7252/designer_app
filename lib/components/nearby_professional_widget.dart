import 'package:flutter/material.dart';

import '../theme/color.dart';

class NearbyProfessionalWidget extends StatelessWidget {
  const NearbyProfessionalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 16),
      child: Center(
        child: Text(
          "Show professionals near your location",
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: secondaryColor),
        ),
      ),
    );
  }
}
