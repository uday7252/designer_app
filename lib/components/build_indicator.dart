import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/data.dart';
import '../theme/color.dart';

Widget buildIndicator({required int activeIndex, required int index}) =>
    AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: DataList[index].imageList.length,
      effect: const ScrollingDotsEffect(
        activeDotColor: secondaryColor,
        dotColor: Colors.white,
        dotWidth: 7,
        dotHeight: 7,
      ),
    );
