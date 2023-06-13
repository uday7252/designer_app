import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/data.dart';
import '../theme/color.dart';

class ImageIndicator extends StatelessWidget {
  final int activeIndex;
  final int itemCount;

  const ImageIndicator({
    required this.activeIndex,
    required this.itemCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: itemCount,
      effect: const ScrollingDotsEffect(
        activeDotColor: secondaryColor,
        dotWidth: 7,
        dotHeight: 7,
      ),
    );
  }
}
